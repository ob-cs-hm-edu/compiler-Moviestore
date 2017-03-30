module Main (main) where

import           Movie
import           Moviestore
import           System.IO  (BufferMode (NoBuffering), hSetBuffering, stdin,
                             stdout)


myMovieStore :: Moviestore
myMovieStore = ( [ (1, "Matrix"                       , 16)
                 , (2, "Alpen - unsere Berge von oben",  0)
                 ]
               , [ (3, "The Breakfast Club"           , 12)
                 ]
               )

main :: IO ()
main = do
  hSetBuffering stdin NoBuffering
  hSetBuffering stdout NoBuffering
  mainloop myMovieStore

mainloop :: Moviestore -> IO ()
mainloop moviestore = do
    menu
    c <- getChar
    putStr "\n"
    moviestore' <- case c of
       'r' -> rentMovie moviestore
       'h' -> handBackMovie moviestore
       'l' -> readMovies
       's' -> saveMovies moviestore
       'p' -> do putStr $ showMoviestore moviestore
                 return moviestore
       _   -> return moviestore
    case c of
       'q' -> putStrLn "Bye" >> return ()
       _ -> mainloop moviestore'
  where
    menu :: IO ()
    menu = do
      putStrLn "*********************************************"
      putStrLn "* Press q(uit) or one of the following keys *"
      putStrLn "* r - rent a movie                          *"
      putStrLn "* h - hand back a movie                     *"
      putStrLn "* l - load Moviestore from a file           *"
      putStrLn "* s - save Moviesstore to a file            *"
      putStrLn "* p - print state of video store            *"
      putStrLn "*********************************************"
      putStr   "Input: "

rentMovie :: Moviestore -> IO Moviestore
rentMovie moviestore = do
    putStr "Id? "
    id <- readLn
    putStr "Alter? "
    age <- readLn
    let (success, moviestore') = rent age id moviestore
    putStrLn $ if success then "Bitte" else "Sorry"
    return moviestore'

handBackMovie :: Moviestore -> IO Moviestore
handBackMovie moviestore = do
    putStr "Id? "
    id <- readLn
    return $ handBack id moviestore

saveMovies :: Moviestore -> IO Moviestore
saveMovies moviestore = do
    putStr "Filename? "
    filename <- getLine
    writeFile filename $ show moviestore
    return moviestore

readMovies :: IO Moviestore
readMovies = do
    putStr "Filename? "
    filename <- getLine
    moviestoreString <- readFile filename
    return $ read moviestoreString


