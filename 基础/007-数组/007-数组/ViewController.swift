//
//  ViewController.swift
//  007-数组
//
//  Created by Yigol on 2017/8/24.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.'
        
        demo4()
        
    }
    
    // 数组的遍历
    func demo() {
        
        // oc 使用[] 定义数组，swift 一样，但是没有 @
        // 自动推导的结果[string]-> 表示数组中存放的都是 string
        // 跟oc中的数组指定泛型类似
        let array = ["张三","李四","王二"]
        print(array)
        
        // [Int] -> 表示存放的都是 Int
        // swift 中基本数据类型不需要包装
        let array2 = [1,2,3]
        print(array2)
        
        // CG结构体
        let p = CGPoint(x: 10, y: 20)
        let array3 = [p]
        print(array3)
        
        // 混合数组: 开发中几乎不用，应为数组是靠下标索引
        // 如果数组中的类型不一致，自动推导的结果 [NSObject]
        // 在swift 中还有一种类型 [AnyObject] -> 任意对象
        // 在swift 中一个类可以没有任何 父类
        // 在混合的数组中，CG 结构体需要包装
        let array4 = ["张三",1 , NSValue(cgPoint:p)] as [Any]
        print(array4)
        
    }
    
    // 数组的遍历
    func demo1() {
        
        let array = ["张三","李四","王二"]
        
        // 1，按照下表遍历
        for i in 0..<array.count {
            print(array[i])
        }
        
        // 2，for in 遍历
        print("-----------")
        for s in array {
            print(s)
        }
        
        // 3， enum block 遍历，同事遍历下标和内容
        print("-----------")
        for e in array.enumerated() {
            print(e)
        }
        
        // 4，遍历下标和内容2
        // n 就是索引下标
        // s 就是[string] 数组 n 对应的 string 元素
        // 其中 n / s 的名字可以随便写
        print("-----------")
        for e in array.enumerated() {
            print("\(e.offset) \(e.element)")
        }
        
        // 5，反序遍历
        print("-----------")
        for s in array.reversed() {
            print(s)
        }
        
        // 6，反序索引 + 内容
        print("-----------")
        for s in array.enumerated().reversed() {
            print(s)
        }
        
        // 错误的写法
        for s in array.reversed().enumerated() {
            print(s)
        }
    }
    
    // 数组的增删改
    func demo2() {
        
        // oc 中的数组分可变 NSMutableArray (var), 不可变 NSArray (let)
        var array = ["张三","李四","王二"]
        
        // 追加元素
        array.append("隔壁老王")
        print(array)
        
        // 修改，通过下标定位
        array[0] = "hehe"
        print(array)
        
        // 删除
        array.remove(at: 3)
        print(array)
        
        // 删除全部，并且保留空间
        array.removeAll(keepingCapacity: true)
        print("\(array) \(array.capacity)")
    }
    
    // 数组的容量
    func demo3() {
        
//        // 定义一个数组，指定类型是存放 Int 的数组， 但是没有初始化
//        var array: [Int]
//        // 给数组进行初始化
//        array = [Int]()
        
        // 以上两句代码可以合并成一句
        var array = [Int]()
        
        print("初始容量\(array.capacity)")
        
        for i in 0...8 {
            array.append(i)
            
            print("\(array) 容量 \(array.capacity)")
        }
        
    }
    
    // 数组的合并
    func demo4() {
        // [String]
        var array = ["张三","李四","王二"]
        
        // [String]
        let array2 = ["1","2","3"]
        
        /**
         var array: [NSObject] = ["张三","李四","王二"]
         
         let array2 = ["1","2","3", 180]
         */
        
        // 将 array2 的内容合并到 array 中
        // 注意：要合并数组的两个类型必须一致
        
        array += array2
        
        print(array)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

