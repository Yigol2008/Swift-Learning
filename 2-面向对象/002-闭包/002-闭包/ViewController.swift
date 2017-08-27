//
//  ViewController.swift
//  002-闭包
//
//  Created by Yigol on 2017/8/26.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /**
         闭包
         1，提前准备好的代码
         2，在需要的时候执行
         3，可以当做参数传递
         */
        
        demo1()
    }
    
    // sum(x: Int, y: Int) -> Int
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }
    
    // 使用常量记录函数的演练
    func demo() {
        
        print(sum(x: 10, y: 20))
        
        // 定义一个常量记录函数
        let f = sum
        
        // 在需要的时候执行
        print(f(10, 40))
    }
    
    
    // 闭包
    func demo1() {
        
        // 1，简单的闭包
        //  () -> ()
        // 如果没有参数，没有返回值，可以省略，连 in 都一起省略
        let b1 = {
            print("hello")
        }
        
        b1()
        
        // 2，带参数的闭包
        // (Int) -> ()
        // 闭包中，参数，返回值，实现代码都是写在 {}
        // 需要使用一个关键字 in 分隔定义和实现
        // { 形参列表 -> 返回值类型 in 现实代码 }
        let b2 = { (x: Int) -> () in
            print(x)
        }
        
        b2(100)
        
        // 3，带参数，返回值的闭包
        // (Int) -> Int
        let b3 = { (x: Int) -> Int in
            return x + 100
        }
        
        print(b3(10))
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

