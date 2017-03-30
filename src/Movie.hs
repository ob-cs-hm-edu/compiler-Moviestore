module Movie
    ( Id
    , Name
    , FSK
    , Movie
    , showMovie
    , showMovieList
    , extract
    ) where

-- | Die Id eines Filmes wird im Moviestore vergeben, um ihn
--   eindeutig zu identifizieren
type Id         = Int
-- | Der Name des Filmes
type Name       = String
-- | Das Alter ab dem der Film von der FSK empfohlen ist.
type FSK        = Int
-- | Ein Film ist ein Tupel aus einer eindeutigen Id, dem
--   Namen und der FSK-Freigabe in Jahren
type Movie      = (Id, Name, FSK)

-- | Die Funktion @showMovie@ wandelt einen Film ein einen String um.
--
-- >>> showMovie (2,"Alpen - unsere Berge von oben",0)
-- "Alpen - unsere Berge von oben (Id: 2, FSK 0)"
--
showMovie :: Movie -> String
showMovie movie = undefined

-- | Die Funktion @showMovieList@ wandelt eine Liste von Filmen in
--   eine Zeichenkette um, die alle Filme getrennt durch Zeilenumbrüche
--   enthält.
showMovieList :: [Movie] -> String
showMovieList movies = undefined

-- | Die Funktion @extract@ versucht einen Film mit der gegebenen
--   Id aus einer Liste von Filmen zu extrahieren.
--   Ist kein Film mit der Id vorhanden, wird `Nothing` und die
--   unveränderte Liste als Tupel zurück gegeben.
--
--   >>> extract 0 [(1,"Matrix",16),(2,"Alpen - unsere Berge von oben",0)]
--   (Nothing,[(1,"Matrix",16),(2,"Alpen - unsere Berge von oben",0)])
--
--   Wird ein Film mit der Id gefunden, wird er ein Tupel bestehend aus dem
--   Film (eingepackt in ein `Just`) und die Liste ohne den Film zurück
--   gegeben
--
--   >>> extract 1 [(1,"Matrix",16),(2,"Alpen - unsere Berge von oben",0)]
--   (Just (1,"Matrix",16),[(2,"Alpen - unsere Berge von oben",0)])
--
--   Sollte in der Liste eine Id mehrfach vorkommen, reicht es das erste
--   Vorkommen zu finden. Weitere Vorkommen werden ignoriert.
extract :: Id -> [Movie] -> (Maybe Movie, [Movie])
extract id movies = undefined
