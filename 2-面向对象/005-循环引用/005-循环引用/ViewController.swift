//
//  ViewController.swift
//  005-循环引用
//
//  Created by Yigol on 2017/8/27.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var completionCallback: (() -> ())?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 循环引用
//        loadData {
//            print(self.view)
//        }
        
        
        /// 解除循环引用
        // 1，oc 的方法
        // weak 只能修饰 var ，不能修饰let
        // weak 可能会被在运行时被修改 -> 指向的对象一旦被释放，会被自动设置为nil
        weak var weakSelf = self
        loadData {
            
            // ？ 可选解包 - 弱 self 已经被释放，不会向对象发送 getter 的消息，更加安全
            // ! 强制解包 - 如果 self 已经被释放，强行解包会导致崩溃
            // 强行解包，因为需要计算，可选项不能直接参与计算！
            print(weakSelf?.view)
        }
        
        
        // 2，swift 的推荐方法
        // [weak self] 表示 {} 中的所有 self 都是弱引用，需要注意解包
        loadData { [weak self] in
            print(self?.view)
        }
        
        // 3，swift 的另一种写法
        // [unowned  self] 表示 {} 中的所有 self 都是 assign 的，不会强引用，但是如果对象释放，指针地址不会变化
        // 如果对象被释放，继续调用，就会出现野指针的问题
        loadData { [unowned  self] in
            print(self.view)
        }
    }
    
    
    // 闭包的应用场景和block一致
    func loadData(completion: @escaping () -> ()) -> () {
        
        self.completionCallback = completion
        
        DispatchQueue.global().async {
            
            print("耗时操作 \(Thread.current)")
            
            Thread.sleep(forTimeInterval: 1.0)
            
            
            DispatchQueue.main.async(execute: {
                
                print("主线程更新UI \(Thread.current)")
                
                
                completion()
                
            })
            
        }
    }
    
    deinit {
        print(" ----- deinit ------ ")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

