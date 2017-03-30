module Main where

import           Movie
import           Moviestore

myMovieStore :: Moviestore
myMovieStore = ( [ (1, "Matrix"                       , 16)
                 , (2, "Alpen - unsere Berge von oben",  0)
                 ]
               , [ (3, "The Breakfast Club"           , 12)
                 ]
               )

main :: IO ()
main = print myMovieStore
