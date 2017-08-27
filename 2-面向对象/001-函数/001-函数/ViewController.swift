//
//  ViewController.swift
//  001-函数
//
//  Created by Yigol on 2017/8/26.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // swfit 1.0 sum(10, 20) , 所有的形参都会省略 
        // swfit 2.0 sum(10, y: 20) , 第一个形参的名称省略
        // swfit 3.0 调用方式 ->
        print(sum(x: 10, y: 20))
        
        print(sum3())
        print(sum3(x: 10, y: 20))
        print(sum3(x: 10))
        print(sum3(y: 20))
        
    }
    
    
    /// 函数定义
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }
    
    /// 外部参数
    // 外部参数及时在形参前面加一个名字
    // 外部参数不会影响函数内部的细节
    // 外部参数会让外部调用方看起来更加直观
    func sum1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
    
    // 外部参数如果使用 _ 在外部调用函数时，会忽略形参的名字
    func sum2(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    
    /// 默认值
    // 通过给参数设置默认值，在调用的时候，可以任意组合参数，如果不指定的，就使用默认值
    // oc 中需要定义很多方法，以及方法实现，最终调用包含所有参数的那个函数
    func sum3(x: Int = 1, y: Int = 2) -> Int {
        return x + y
    }
    
    
    /// 无返回值
    // 直接省略
    func demo1() {
        print("111")
    }
    // ()
    func demo2() -> () {
        print("222")
    }
    // Void
    func demo3() -> Void {
        print("333")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

