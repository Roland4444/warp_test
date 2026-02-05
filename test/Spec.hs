import Test.Hspec
import Lib  (summ, get_pass_via_email)

main :: IO ()
main = hspec $ describe "MyLib.add" $ do
  it "adds two numbers" $
    summ 1 2 `shouldBe` 3

  it "returns the first number when adding zero" $
    summ 5 0 `shouldBe` 5

  it "xetarct pass" $
    get_pass_via_email "test@ya.ru" `shouldReturn` "123"




-- import Test.HUnit   JootYryB3Y1-

-- testList :: Test

-- testList = TestList [TestCase (assertEqual "Должно сложить числа" 4 (2 + 2)),
--                      TestCase (assertEqual "Должно вычесть числа" 0 (2 - 2))]

-- main :: IO Counts
-- main = runTestTT testList