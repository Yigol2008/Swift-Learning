//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//  面向对象及实例属性

// 保存属性：保存单个类型的变量
class 角色 {
    var id  = ""
    var money = 0
}
let xiaobo = 角色()
xiaobo.id = "666"
xiaobo.money = 5000

// 计算属性：由其他属性计算得出的。由getter和setter组成
// getter 获取器（必须）：描述属性如何计算已经返回语句，形式：get{语句和返回}
// setter 设置器（可选）：有新值（newValue）后如何影响其他属性，形式：set{语句}
// 游戏角色的当前坐标，通常是移动方式代表的位移量相关
struct 坐标 {
    var x = 0, y = 0
}
enum 移动方式 {
    case 走
    case 跑
    case 骑
    case 传送
}

class 法师:角色 {
    var 人物坐标 = 坐标()
    var 人物移动方式 = 移动方式.走
    var 当前坐标:坐标 {
        get {
            switch 人物移动方式 {
            case .走:
                人物坐标.x += 1
                人物坐标.y += 1
            case .走:
                人物坐标.x += 3
                人物坐标.y += 3
            case .走:
                人物坐标.x += 10
                人物坐标.y += 10
            case .走:
                人物坐标.x += 1000
                人物坐标.y += 1000
            default:
                break
            }
            return 人物坐标
        }
        
        set {
            人物坐标 = newValue
        }
    }
}

var 法师1 = 法师 ()
法师1.当前坐标
法师1.人物移动方式 = .跑
法师1.当前坐标
法师1.人物移动方式 = .传送
法师1.当前坐标
//计算属性的setter方法，影响其他属性
法师1.当前坐标 = 坐标(x:2000, y:90)
法师1.当前坐标



// 属性监视器：对属性值的变化进行响应
// willSet：事前响应，新值 newValue
// didSet：事后响应，旧值 oldValue
class 经验 {
    var 总经验 = 0 {
        willSet {
            print("当前总经验是：\(newValue)")
        }
        didSet {
            print("增加了\(总经验 - oldValue)点经验")
        }
    }
}
var 经验1 = 经验()
经验1.总经验 = 1000
经验1.总经验 = 3000
经验1.总经验 = 8000



// 类型属性：属于类型固有的，实例不能调用
// 对于类， 计算性的类型属性，前面加关键字class可被子类重写（override）
class 生命体 {
    class var 遗传方式 :String {
        return "RNA"
    }
}
生命体.遗传方式
class Human: 生命体 {
     override class var 遗传方式 : String {
        return "DNA"
    }
}
Human.遗传方式
struct 逛街 {
    static let 试衣间 = "UNICLO"
    static let 网站 = "http://www.tabao.com/"
    var cate = ""
    
    var shareUrl : String {
        return 逛街.网站 + cate
    }
}
逛街.试衣间
let 逛淘宝 = 逛街(cate : "seafood")
逛淘宝.shareUrl



// 方法是一个类/结构体/枚举关联的函数。分为实例方法和类型方法
enum Monster: Int {
    case sheep = 10,
    cat = 50,
    snake = 100
}
struct ExpTimes {
    var open = false
    var times = 1
}
class RmbPlayer {
    var exp = 0
    var expTimes = ExpTimes()
    
    func idle () {
        exp += 500
        print("挂机成功1次! 总经验为\(exp)")
    }
    
    func kill(monster: Monster, expTimes: Int)  {
        exp += (monster.rawValue * expTimes)
        print("当前总经验\(exp)")
    }
}

var xiaobo1 = RmbPlayer()
xiaobo1.idle()
xiaobo1.kill(monster: Monster.cat, expTimes: 2)



// 类型方法：属于类型本身，无需实例化就可以使用，方法前加关键字static
// 对于类，加关键字class，可被子类重写（override）
class Player {
    static var nick = "xiaobo"
    class  func server () {
        print("\(nick),您在北京联通1区")
    }
}
Player.server()
class ShanghaiPlayer:Player {
    override static func server () {
        print("\(nick),您在上海联通1区")
    }
}
ShanghaiPlayer.server()



// 下标是方法的一种，是访问集合，列表或者序列中的元素的快捷方式。用法：实例名[索引]
// 定义形式：一个名为subscript的计算属性；可以忽略set（只读）
var array1 = [1, 2, 3]
array1[0]
// 通过下标简化调用方法
struct Cycle {
    func area(radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    subscript (radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
}
let cycle = Cycle()
cycle.area(radius: 3)
cycle[3]



// 继承：class之间的“父子”关系的体现
// 子类可以继承父类的属性和方法
// 子类可以根据需要，修改继承来的属性和方法（多态）
class Viechle {
    var speed = 0
    var desc : String {
        return "时速\(speed)km/h"
    }
    func makeNoise () {
    
    }
}
class Bike : Viechle {
    var hasBasket = true
}
let aBike = Bike()
aBike.speed = 30
aBike.desc
aBike.hasBasket
class CRH:Viechle {
    override func makeNoise() {
        print("嘟嘟嘟")
    }
}
let crh = CRH()
crh.makeNoise()



// 初始化：描述类/结构体/枚举实例化时，属性如何给初始值的方法。形式init(){}。此方法称之为构造器
// 类的定义没有给属性默认的值，则须在init中指定。
// 结构体定义不需要指定属性默认的值，应为默认提供一个包含所有属性初始化的构造器。
// 便利构造器：可以通过对主构造器的包装，实现便利的初始化
// 可失败构造器：针对有可能的初始化失败，返回nil。初始化一张图片，如果图片名称不存在，则初始化失败。
class RoomTemp {
    var season : String
    var temp : Int
    
    init(season: String, temp: Int) {
        self.season = season
        self.temp = temp
    }
}
let temp1 = RoomTemp(season: "Spring", temp: 20)
temp1.season
temp1.temp

struct RoomTemp1 {
    var season:String
    var temp:Int
}
let temp2 = RoomTemp1(season:"Summer", temp: 30)
temp2.season
temp2.temp

class Food {
    var name:String
    init(name:String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "食物")
    }
}
let food = Food()

struct Animal {
    let name:String
    
    init?(name:String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}
let cat = Animal(name:"")
cat?.name



// 错误处理：反映运行出错的“细节”，并恢复程序的过程
// 可选类型仅处理值缺失，错误处理可以针对不同的出错原因对不同的应对
// 一个函数可以加上throws关键字，表示可以处理错误，这个函数的调用者可以捕获（catch）这个错误并进行应对
// 当你调用可以抛出错误的函数，在前面加上try关键字
// 处理更细分的错误情况，错误类型 遵从ErrorType协议
// 有时候仅关心结果有无，可使用try?或者try!来忽略错误细节
func aFoo() throws {
    print("hahhahhahhh")
}
try aFoo()
enum LearningObs:Error {
    case noMethod, noReading, noTool(tool: String)
}
func iosDev(method:Bool, style:Bool, hasTool:Bool) throws {
    guard method else {
        throw LearningObs.noMethod
    }
    guard style else {
        throw LearningObs.noReading
    }
    guard hasTool else {
        throw LearningObs.noTool(tool: "mac")
    }
}

do {
    try iosDev(method: true, style: false, hasTool: false)
    print("开始学习swift开发")
} catch LearningObs.noTool {
    print("没有学习工具")
} catch LearningObs.noReading {
    print("没有学习机会")
} catch LearningObs.noMethod {
    print("没有学习方法")
}

if let  result = try? iosDev(method: true, style: true, hasTool: false) {
    print("恭喜进入学习")
} else {
    print("学习条件不满足")
}

