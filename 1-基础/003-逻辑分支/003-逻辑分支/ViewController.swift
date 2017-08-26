//
//  ViewController.swift
//  003-逻辑分支
//
//  Created by Yigol on 2017/8/21.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo1()
        demo2()
    }
    
    func demo1() {
        /** 
         1，条件不需要（）
         2，语句必须有{}
            -很多公司的代码规范中，禁止不使用{}
         
         */
        
        let x = 10
        
        if x > 5 {
            print("大了")
        } else {
            print("小了")
        }
        
        
    }
    
    // MARK: ******** 三目运算
    func demo2() {
        
        let x = 3
        
        // 三目运算的语法和oc一样
        x > 5 ? print("大了") : print("小了")
        
        // 扩展
        // '()' 表示空执行
        x > 5 ? print("大了") : ()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

