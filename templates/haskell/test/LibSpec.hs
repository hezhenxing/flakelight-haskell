module LibSpec (spec) where

import Lib
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
  describe "plus" $ do
    it "basic" $ plus 1 2 `shouldBe` 3
    it "overflow" $ plus maxBound 1 `shouldBe` minBound
    prop "minus" $ \i -> plus i 2 - 2 `shouldBe` i
