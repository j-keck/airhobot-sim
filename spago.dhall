{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "airhobot-sim"
, dependencies =
    [ "canvas", "console", "debug", "effect", "psci-support", "react-basic" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
