//
//  ViewController.swift
//  001-常量变量
//
//  Created by Yigol on 2017/8/19.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo()
        demo1()
        demo2()
        
    }

    
    func demo() {
        
        // 1，定位变量 var ，定义之后，可以修改；常量let 定义之后，不能修改
        // 2，自动推导，变量/常量的类型会根据右侧的代码执行结果，推导对应的类型
        //    热键 ：option + click
        var x = 10
        
        x = 20
        
        let y = 10.5
        
        let v = UIView()
        
        print(x)
        print(y)
        print(v)
    }
    
    func demo1() {
        
        
        // 3，在 swift 中对应类型要求异常严格
        //   任何不同类型的数据之间，不允许直接运算
        //   不会做默认的隐式转换，所有类型确定，都要由程序员负责
        // 4，swift 中不存在基本数据结构，都是结构体
        
        let x = 10
        let y = 10.5
        
        // 错误
        //print(x + y)
        
        // 将 y 转换成整数
        print(x + Int(y))
        
        // 将 x 转换成 double
        print(Double(x) + y)
    }
    
    func demo2() {
        // 如果指定变量/常量的类型
        // 提示：在swift开发中，极少使用直接指定类型，通常都是自动推导
        let x: Double = 10
        let y = 10.5
        
        print(x + y)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

