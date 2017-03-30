module Moviestore
    ( Moviestore
    , showMoviestore
    , Age
    , rent
    , handBack
    ) where

import           Movie

-- | Eine Videothek besteht aus einem Tupel mit zwei Listen von Filmen,
--   die erste Komponente enthält alle zur Zeit verfügbaren, die zweite
--   Komponente alle zur Zeit ausgeliehenen Filme.
--   Beispiel:
--
--   > myMovieStore = ( [ (1, "Matrix"                       , 16)
--   >                  , (2, "Alpen - unsere Berge von oben",  0)
--   >                  ]
--   >                , [ (3, "The Breakfast Club"           , 12)
--   >                  ]
--   >                )
type Moviestore = ( [Movie] {- verfügbare Filme-}
                  , [Movie] {- ausgeliehene Filme -})

-- | Die  Funktion @showMoviestore@ macht aus einer Videothek eine Zeichenkette
--   und zwar in der Form, dass zuerst alle verfügbaren, dann alle ausgeliehenen
--  Filme angezeigt werden. Im GHCi soll das dann beispielsweise so aussehen:
--
-- > ghci> putStrLn $ showMoviestore myMovieStore
-- > Verfügbare Filme (2)
-- > ====================
-- > Matrix (Id: 1, FSK 16)
-- > Alpen - unsere Berge von oben (Id: 2, FSK 0)
-- >
-- > Ausgeliehene Filme (1)
-- > ======================
-- > The Breakfast Club (Id: 3, FSK 12)
showMoviestore :: Moviestore -> String
showMoviestore moviestore = undefined

-- | Das Alter in Jahren.
type Age = Int

-- | Mit der Funktion @rent@ kann ein Film ausgeliehen werden.
--   Dazu werden die Id und die Videothek übergeben, sowie das
--   Alter des Ausleihers. Ist die Id vorhanden und ist das Alter
--   ausreichend für den Film, wird der Film ausgeliehen, d.h.
--   es wird ein Tupel bestehend aus `True` und der entsprechend
--   veränderten Videothek zurück gegeben. Anderenfalls ist ein
--   Tupel bestehend aus `False` und der unveränderten Videothek
--   das Ergebnis.
rent :: Age -> Id -> Moviestore -> (Bool, Moviestore)
rent age id moviestore = undefined

-- | Mit der Funktion @handBack@ wird ein Film zurück gegeben.
--   Ist der Film gar nicht ausgeliehen bzw. gar nicht vorhanden,
--   wird das ignoriert und die unveränderte Videothek ist das
--   Ergebnis. Sonst wird der Film von den ausgeliehenen zurück zu
--   den verfügbaren "bewegt".
handBack :: Id -> Moviestore -> Moviestore
handBack id moviestore = undefined
