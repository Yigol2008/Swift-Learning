//
//  ViewController.swift
//  002-可选项
//
//  Created by Yigol on 2017/8/19.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        /**
         定义 可选项使用 ?
         解包使用 ! ，准备计算
         */
        
        demo1()
        
        demo2()
        
    }
    
    
    func demo1() {
        // 1，原始的可选项定义
        // none 没有值，或者 some 某一类值
        let x: Optional = 10
        
        // 2，简单的定义
        // ? 用来定义 y 是一个可选的 Int 类型，可能没有值，也可能有一个整数
        let y: Int? = 20
        
        print(x)
        
        // 常量 y 使用之前必须初始化
        print(y)
        
        // 1> 不同类型之间的值不能直接运算！如果没有值是nil 不是任何数据类型，不能参与计算
        //print(x + y)
        // 2> ！ 强行解包，从可选值中强行获取对应的非空值，如果真的是 nil ，就会崩溃
        // 程序员必须为每一个 ！负责
        print(x! + y!)
        
    }
    
    func demo2() {
        // 定义 y ，没有初始化
        let y: Int?
        // 给常量设置数值，初始化的工作只能做一次
        y = 20
        // 再次修改常量会报错
        // y = 20
        print(y)
        
        
        // var 的可选值默认为nil
        // let 的可选值没有默认值
        var x: Int?
        
        print(x)
        
        x = 10
        x = 100
        
        print(x)
    }
    
    func demo3() {
        
    }
    
    func demo4() {
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

