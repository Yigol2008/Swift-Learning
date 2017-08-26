//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Hello world
print("Hello world")



// 常量
// let name = value
let π = 3.1415



// 变量  
// var name = value
var pi = 3
var name = "Learning the swift"
name = "Studying"


// Int和类型推断
// 形式： var 变量名 ：Int = 3 。由于Swift有类型推断，类型可以省略不写
var runDistance : Int = 5
runDistance = 66



// Double
// swift 中默认浮点型是Double（双精度）
var hh : Double = 3.1
hh = 4.0



// 类型安全
// 变量一旦定义，其类型不可更改，即：不能给变量一个类型不同的值。
var money = 3.5
money = 5
print(money)
// error: money = "5"



// Bool
// 只有2个值，true 和 false
var haveMoney = true
haveMoney = false



// Tuple
// 元组（Tuple）: 定义变量的一个组合
// 形式（一般）：(3, "day", "swift", "3.0")
// 形式（前缀）：(day:3, unit:"day", lang:"swift", ver:"3.0")
var (x, y, z) = (1, 2, 3)
var myClass = (day:3, unit:"Day", lang:"Swift", ver:"3.0")
print(myClass.day)
print(myClass.unit)
print(myClass.2)



// Optional
// 可选类型（Optional）：代表变量可能有值的情况
// 形式：var 变量 ：类型？ ，默认是无值（nil）
var addr : String?
addr = "GuangDong ShenZhen"


// 基础操作符
// 操作几个对象，被称之为几元操作符
// 操作一个目标，是一元操作符
var aa = 3
aa += 5
aa -= 5
12 / 3
13 % 3
true && true && false
true || true || false
!(true || true || false)



// 字符和字符串
// String 是字符串类型， Character 是字符类型
// 2个字符串可以通过 + 来连接
// 通过字符串插值可合成一个长字符串
var aStr = ""//空字符串
aStr.isEmpty

var c : Character = "c"
var o : Character = "我"
// 可以对一个字符串的characters属性进行循环，来访问其中单个字符
let words = "2018世界杯在哪里？"
for word in words.characters {
    print(word)
}
let a1 = "2018世界杯"
let b1 = "在俄罗斯"
let c1 = a1 + b1
// 向字符串添加字符，用append方法
aStr.append(c)
aStr.append(words)
// 字符串插值
let sName = "Tom"
let sType = "G"
let sNumber = 11
let sPrice = 168.5
let tickets = "\(sName)先生，您订购了\(sType)\(sNumber)的往返票，需支付\(sPrice * 2)元"



// 集合类型-数组
// 有序可重复-数组（Array）
// 无序不重复 - Set
// 无序可重复，但每个值有唯一的键（key）- 字典(Dictionary)
// 批量处理集合中的元素，可以使用for in 循环
let arr : [Int]
arr = [Int](repeatElement(3, count: 10))//重复值
let arr2 = Array(0...10)//范围
var places = ["beijing", "shanghai", "guangzhou", "shenzhen"]
places.count
places.isEmpty
places.append("wuhan")
let haiwaiPlaces = ["NewYork", "London", "Sao paolu"]
places += haiwaiPlaces
places[7]
places.insert("Paris", at: 1)
places.remove(at: 1)
places



// 集合类型 - Set
let cardNo : Set = [1, 2, 3, 1]
var citys : Set = ["shanghai","beijing","wuhan"]
citys.count
citys.isEmpty
citys.insert("guangzhou")
citys.remove("wuhan")
citys
citys.contains("beiji")
let cityArr = citys.sorted() // 转数组



// 集合类型 - 字典
var airports = ["PVG":"ShangHai Pudong", "CHU":"Dalian", "DUB":"Dublin Airport"]
airports.count
airports.isEmpty
airports["SHQ"] = "Hongqiao Airport"
airports["PVG"] = "上海浦东"
airports["DUB"] = nil
airports
for (key, vaule) in airports {
    print(key, vaule)
}
for key in airports.keys {
    print(key)
}
let codes = [String](airports.keys)
let airportFullname = [String](airports.values)

// 控制流
// for-in ，while 循环
// if
// 早退语句 guard else
// 退出循环语句 break continue
// switch

for i in 1...10 {
    if i == 3 {
        continue
//        break
    }
    print(i)
}

let temp = 20
switch temp {
case 0...15:
    print("code")
case 16...24:
    print("little code")
case 25...34:
    print("Exactly")
case 35...40:
    print("Hot")
default:
    print("超过范围！")
}

let  sate = (0, 2)
switch sate {
case (0, 0):
    print("原点")
case (_, 0):
    print("坐标在x轴上")
case (0, _):
    print("坐标在y轴上")
case (-2...2, -2...2):
    print("坐标在2*2范围内")
default:
    break
}



// 函数
// 形式：func 函数名（参数1：类型，参数2：类型，...）-> 返回结果的类型{执行语句}
// 调用：var 变量名称 = 函数名（变量1，变量2，...）
func add(a:Int, b:Int) -> Int {
    return a + b;
}
var sum = add(a: 3, b: 4)
add(a: sum, b: -2)

func welcome() {
    print("welcome to study swift")
}
welcome()

func maxMin() -> (Int, Int) {
    return (Int.min, Int.max)
}
maxMin().0
maxMin().1

func add2(x: Int , increment: Int = 2) -> Int {
    return x + increment
}
add2(x: 3)
add2(x: 5, increment: 1)

func calculate(x: Int, y: Int, method:(Int, Int) -> Int) -> Int {
    return method(x, y)
}
func add3(x: Int, y: Int) -> Int {
    return x + y
}
func multiply(x: Int, y: Int) -> Int {
    return x * y
}
calculate(x: 3, y: 4, method: add3)
calculate(x: 5, y: 6, method: multiply)



// 闭包（closure）
// 闭包是一种函数的简写形式，省去函数名， 把参数和返回值放入花括号内
func daoxu(a: String, b: String) -> Bool {
    return a > b
}

var city = ["zhengzhou", "xiamen", "hefei", "nanchang"]
var cityRank1 = city.sorted()
var cityRank2 = city.sorted(by: daoxu )
var cityRank3 = city.sorted { (a, b) -> Bool in
    return a > b
}
var cityRank4 = city.sorted { (a, b) in
    a > b
}
// 闭包的自动推断：
// 1,参数和返回类型可自动推断， 单表达式可以忽略return关键字
// 2,可使用快捷参数，前缀$，从0开始递增
var cityRank5 = city.sorted { $0 > $1}
cityRank5



// 枚举
enum Weather {
    case sunny
    case cloudy
    case rainy
    case snow
    case froggy
}
Weather.cloudy
var todayweather = Weather.sunny
switch todayweather {
case .sunny:
    print("晴朗")
case .cloudy:
    print("多云")
default:
    print("hehe")
}





















