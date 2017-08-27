//
//  ViewController.swift
//  003-GCD
//
//  Created by Yigol on 2017/8/27.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        loadData { (result: [String]) in
            print("\(result)")
        }
        
        /// 尾随闭包
        // 如果函数的最后一个参数是闭包，函数参数可以提前结束，最后一个参数直接使用{}包装闭包的代码
        loadData { (result) in
            print("\(result)")
        }
        
        /// 按照函数本身编写的结果
        // 关于尾随闭包
        // 1，要能看懂
        // 2，能够慢慢的编写，大多数 Xcode 的只能提示会帮我们做
        loadData(completion: { (result) -> () in
            print("\(result)")
        })
        
    }
    
    
    
    // 闭包的应用场景和block一致
    func loadData(completion: @escaping (_ result: [String]) -> ()) -> () {
        
        DispatchQueue.global().async {
            
            print("耗时操作 \(Thread.current)")
            
            Thread.sleep(forTimeInterval: 1.0)
            
            let json = ["1111", "222", "3333"]
            
            DispatchQueue.main.async(execute: { 
                
                print("主线程更新UI \(Thread.current)")
                
                
                completion(json)
                
            })
            
            
        }
    }
    
    func demo() {
        
        // 尾随闭包
        DispatchQueue.global().async { 
            
            // 嵌套的 GCD xcode 不会改成尾随闭包
            DispatchQueue.main.async(execute: { 
                
                
            })
        }
        
        // 尾随闭包
        DispatchQueue.global().async { 
            
            
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

