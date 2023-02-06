module App where

import Args ( Args, parseArgs )
import Options.Applicative ( handleParseResult )
import System.Environment (getArgs)
import Graphics.Gloss

program :: IO ()
program =
  getArgs >>= (handleParseResult . parseArgs) >>= program'

program' :: Args -> IO()
program' _ = display (InWindow "Hello, World!" (400, 300) (10, 10)) white (Text "Hello, World!")

