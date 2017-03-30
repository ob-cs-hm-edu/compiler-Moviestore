module MovieSpec (spec) where

import           Movie
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec = do
    describe "A movie" $ do
        it "should be converted into a string" $
            showMovie (2,"Alpen - unsere Berge von oben",0)
                `shouldBe` "Alpen - unsere Berge von oben (Id: 2, FSK 0)"

