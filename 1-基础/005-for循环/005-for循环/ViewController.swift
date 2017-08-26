//
//  ViewController.swift
//  005-for循环
//
//  Created by Yigol on 2017/8/21.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo2()
    }
    
    // 反序遍历
    func demo2() {
        
        // reversed 反转
        for i in (0..<10).reversed() {
            print(i)
        }
    }
    
    func demo1() {
        
        // swift 对语法要求非常严，尤其是空格
        
        // 变量 i 在 [0,5) 循环
        for i in 0..<5 {
            print(i)
        }
        
        print("-----------")
        
        // 变量 i 在 [0,5] 循环
        for i in 0...5 {
            print(i)
        }
        
        print("-----------")
        
        // 提示：范围定义是一个固定的格式，一定注意空格
        //  CountableRange<Int>
        let r1 = 0..<5
        print(r1)
        
        // CountableClosedRange<Int>
        let r2 = 0...5
        print(r2)
        
        
    }
    
    func demo() {
        
        /**
         传统的 for，在swift 3.0 被取消
         i++ / ++i 从swift 3.0 被取消 取而代之 i += 1
         i++ 会多一个临时变量， i++ 大多数程序员使用 ，++i C++ C 程序员使用
         
         */
        
        /**
         num = i++
         等价代码
         
         temp = i
         num = temp
         i = temp + 1
         
         */
        
        /**
         
         num = ++i
         等价代码
         
         i = i + 1
         num = i
         
         */
        
        
        /**
         for var i = 0;i < 10 ;i++ {
         
         }
         */
        
        for i in 0 ..< 10  {
            
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

