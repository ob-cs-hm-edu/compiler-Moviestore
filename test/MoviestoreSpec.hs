module MoviestoreSpec (spec) where

import           Moviestore
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec = do
    describe "A moviestore" $ do
        it "should be converted into a string" $
            showMoviestore  ([],[])
                `shouldBe`
                    (  "Verfügbare Filme (0)\n====================\n\n"
                    ++ "Ausgeliehene Filme (0)\n======================\n"
                    )

