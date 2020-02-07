module Draw where

import Control.Bind (pure, (*>))
import Data.Array as A
import Data.Function ((>>>))
import Data.Int (round)
import Data.Ring ((*), (+))
import Data.Semigroup ((<>))
import Data.Show (show)
import Data.Unit (Unit, unit)
import Effect (Effect)
import Graphics.Canvas (Context2D)
import Graphics.Canvas as C
import Math (pi)
import Prelude (discard)

type Point = { x :: Number, y :: Number }


drawCircle :: Context2D -> { x :: Number, y :: Number, radius :: Number, color :: String } -> Effect Unit
drawCircle ctx props = C.withContext ctx
  do C.beginPath ctx
     C.arc ctx { x: props.x, y: props.y, radius: props.radius, start: 0.0, end: 2.0 * pi }
     C.setFillStyle ctx props.color
     C.fill ctx


drawLine :: Context2D -> String -> Point -> Point -> Effect Unit
drawLine ctx color from to = C.withContext ctx
  do C.beginPath ctx
     C.moveTo ctx from.x from.y
     C.lineTo ctx to.x to.y
     C.setStrokeStyle ctx color
     C.stroke ctx

drawLines :: Context2D -> String -> Array Point -> Effect Unit
drawLines ctx color xs = case A.take 2 xs of
  [from, to] -> drawLine ctx color from to *> drawLines ctx color (A.drop 1 xs)
  _ -> pure unit

drawPosAtPoint :: Context2D -> Point -> Effect Unit
drawPosAtPoint ctx p =
  let s = round >>> show
      txt = "x: " <> s p.x <> ", y: " <> s p.y
  in C.fillText ctx txt (p.x + 10.0) (p.y + 2.5)


clearField :: Context2D -> Effect Unit
clearField ctx =
  C.clearRect ctx {height: 800.0, width: 800.0, x: 0.0, y: 0.0}
