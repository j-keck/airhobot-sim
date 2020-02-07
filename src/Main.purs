module Main where

import Prelude

import Data.Array as A
import Data.Maybe (Maybe(..), maybe)
import Data.Monoid (guard)
import Draw (clearField, drawCircle, drawLine, drawLines, drawPosAtPoint)
import Effect (Effect)
import Effect.Exception (throw)
import Global (isNaN)
import Graphics.Canvas (Context2D)
import Graphics.Canvas as C
import Partial.Unsafe (unsafePartial)
import React.Basic (JSX, Self, createComponent, fragment, make)
import React.Basic.DOM (render)
import React.Basic.DOM as R
import React.Basic.DOM.Events (capture, clientX, clientY, target)
import React.Basic.Events (merge)
import Unsafe.Coerce (unsafeCoerce)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.HTMLElement (getBoundingClientRect)
import Web.HTML.Window (document)


main :: Effect Unit
main = (map toNonElementParentNode $ document =<< window)
   >>= getElementById "app"
   >>= maybe (throw "node with id 'app' not found") pure
   >>= render app


type Point = { x :: Number, y :: Number }

type State =
  { puckStartPos :: Maybe Point
  , oldPusherPos :: Point
  }

app :: JSX
app = unit # make component { initialState, render }

  where
    component = createComponent "App"

    initialState = { puckStartPos: Nothing
                   , oldPusherPos: { x: 0.0, y: 0.0 }
                   }

    render self = fragment
      [ R.text "airhobot spielzüge. derzeit nur einfache pfade und über bande."
      , R.br {}
      , R.text "platziere mit der maus zwei puck positionen in der unteren fläche."
      , R.br {}
      , R.text "1. puck position: grün, 2. puck position: schwarz"
      , R.br {}
      , R.text "angezeigt werden - puck pfad: als rote linie, pusher position: blauer punkt."
      , R.hr {}
      , R.canvas
        { id: "field"
        , onClick: unsafePartial $ capture (merge { target, clientX, clientY })
          \{ target, clientX: (Just x), clientY: (Just y)} -> do
            rect <- getBoundingClientRect $ unsafeCoerce target
            let x' = x - rect.left
                y' = y - rect.top
            ctx <- C.getContext2D $ unsafeCoerce target
            update self (Click ctx { x: x', y: y' })
        , width: "800px"
        , height: "800px"
        , style: R.css { border: "1px solid black" }
        }
      , R.br {}
      , R.a { href: "https://github.com/j-keck/airhobot-sim"
            , children: [ R.text "airhobot-sim" ]
            }
      ]




data Command =
    Click Context2D Point
  | PlacePuckStartPos Context2D Point
  | PlacePuckEndPos Context2D Point Point
  | MovePusher Context2D Point

update :: Self Unit State -> Command -> Effect Unit
update self = case _ of

  Click ctx p -> unsafePartial do
    update self $ case self.state.puckStartPos of
      Nothing -> PlacePuckStartPos ctx p
      Just start -> PlacePuckEndPos ctx start p

    drawPosAtPoint ctx p



  PlacePuckStartPos ctx p@{x, y} -> do
    clearField ctx

    self.setState _ { puckStartPos = Just p }
    drawCircle ctx { x, y, radius: 5.0, color: "green" }



  PlacePuckEndPos ctx start end -> do
    drawCircle ctx { x: end.x, y: end.y, radius: 5.0, color: "black" }
    drawLine ctx "black" start end


    -- straight line - without any side bounds
    drawLine ctx "yellow" end (straightLine start end)
    self.setState _ { puckStartPos = Nothing }


    -- puck path - including any side bounds
    guard (start.y < end.y) $ unsafePartial $
      let paths = A.cons end $ predict start end
          Just p = A.last paths
      in    drawLines ctx "red" paths
         *> update self (MovePusher ctx p)



  MovePusher ctx new@{x, y} -> do
    let old = self.state.oldPusherPos
    C.clearRect ctx { x: old.x - 5.0, y: old.y - 5.0, width: 10.0, height: 10.0 }

    drawCircle ctx { x, y, radius: 5.0, color: "blue" }
    drawPosAtPoint ctx new

    self.setState _ { oldPusherPos = new }




straightLine :: Point -> Point -> Point
straightLine old new =
  if old < new
  then straightLine' old new 800.0
  else straightLine' new old 0.0

  where
    straightLine' from to x =
      let m = (to.y - from.y) / (to.x - from.x)
          n = from.y - from.x * m
      in { x, y: n + x * m }



predict :: Point -> Point -> Array Point
predict old new =
   let m = (new.y - old.y) / (new.x - old.x)
       y = 795.0
       x = (y - new.y) / m + new.x
       p = { x, y }
   in guard (notNaN x) $
      if x >= 0.0 && x <= 800.0
      then [ p ]
      else let bounce_x = if x < 0.0 then 0.0 else 800.0
               bounce_y = (bounce_x - new.x) * m + new.y
               b = { x: bounce_x, y: bounce_y }
               p' = { y: 795.0, x: (y - b.y) / (negate m) + b.x }
           in [ b, p' ] <> predict b p'

  where
    notNaN = not <<< isNaN
