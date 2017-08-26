//
//  ViewController.swift
//  004-可选项的判断
//
//  Created by Yigol on 2017/8/21.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo1(x: 10, y: 20)
        demo2(x: 10, y: nil)
        demo3()
    }
    
    
    func demo1(x: Int?, y: Int?) {
        
        /**
         1，强行解包有风险
            print(x! + y!)
         
         2， 使用 if 判断 
         但是，如果直接使用 if 一不小心，会让代码很丑陋
         
        */
        
        if x != nil && y != nil {
            print(x! + y!)
        } else {
            print("x 或者 y 为nil")
        }
        
    }
    
    // MARK: ******** ??
    func demo2(x: Int?, y: Int?) {
        
        /**
         ?? 是一个简单的三目
         如果有值，使用值
         如果没有值，使用 ?? 后面的替代
         */
        
        print((x ?? 0) + (y ?? 0))
        
        
        let name: String? = "老王"
        
        print((name ?? "") + "您好")
        
        // ?? 操作符号的优先级‘低’，在使用的时候，最好加上（）包一下
        print(name ?? "" + "您好")
    }
    
    // MARK: ******** if let / var 连用语法，目的就是判断值
    func demo3() {
        
        let oName: String? = "老王"
        let oAge : Int? = 10
        
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }
        
        // if let 连用 ，判断对象的值是否为nil, { } 内一定有值，可以直接使用，不需要解包
        if let name = oName, let age = oAge {
            print(name + String(age))
        } else {
            print("name 或者 age 为 nil")
        }
        
        // if var 连用，{}可以对值进行修改
        if var name = oName, let age = oAge {
            name = "老李"
            // 进入分支之后，name 和 age 一定有值，不需要解包
            // name 和 age 的作用域仅在 { } 中
            print(name + String(age))
        } else {
            print("name 或者 age 为 nil")
        }
        
        
        // guard 守护/守卫
        // guard let 和 if let 刚好相反
        func demo4() {
            let oName: String? = "老王"
            let oAge : Int? = 10
            
            guard let name = oName, let age = oAge else {
                
                print("name 或者 age 为 nil")
                return
            }
            
            /**
             代码执行至此，name 和 age 一定有值
             通常判断是否有值之后，会做具体的逻辑实现，通常代码多
             如果用 if let 凭空多了一层分支，guard 是降低分支层次的方法
             guard  的语法是 swift 2.0 推出的
             */
            print(name + String(age))
            
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

