-- 定义BookInfo类型，Book是值构造器
data BookInfo = Book Int String [String]
    deriving (Show)

-- 生成BookInfo变量
myInfo = Book 9780135072455 "Algebra of Programming"
              ["Richard Bird", "Oege de Moor"]

-- 类型别名
type CustomerID = Int
type ReviewBody = String

-- 类型名和值构造器可以同名
data BookReview = BookReview BookInfo CustomerID String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody
                    deriving(Show)

-- 代数数据类型 可以有多个值构造器
type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)
-- 这个程序提供了三种付款的方式。如果使用信用卡付款，就要使用 CreditCard 作为值构造器，
-- 并输入信用卡卡号、信用卡持有人和地址作为参数。
-- 如果即时支付现金，就不用接受任何参数。
-- 最后，可以通过货到付款的方式来收款，在这种情况下，只需要填写客户的 ID 就可以了。
