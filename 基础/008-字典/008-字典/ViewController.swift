//
//  ViewController.swift
//  008-字典
//
//  Created by Yigol on 2017/8/24.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo4()
    }
    
    // 字典定义
    func demo1() {
        
        let dict1 = ["name":"张","age":"12"]
        print(dict1)
        
        let dict: [String: Any] = ["name":"张", "age":18]
        print(dict)
        
        let array: [[String: Any]] = [
            ["name":"张1", "age":18],
            ["name":"张2", "age":18]
        ]
        print(array)
    }
    
    // 增删改
    func demo2() {
        
        // 可变 var ，不可变 let
        var dict: [String: Any] = ["name":"张", "age":18]
        
        // 新增 - 如果 key 不存在， 就是新增
        dict["title"] = "大哥"
        print(dict)
        
        // 修改 - 通过 key 取值，key 在字典中必须是唯一的
        // 如果 key 存在，就是修改
        dict["name"] = "666"
        print(dict)
        
        // 删除 - 直接给定 key
        // 科普，字典是通过 key 定位值的，key 必须是可以 hash 
        // hash 就是将字符串变为唯一的 ‘整数’ ，便于查找，提高字典变量速度
        dict.removeValue(forKey: "age")
        print(dict)
    }
    
    // 遍历
    func demo3() {
        let dict: [String: Any] = ["name":"张", "age":18]
        
        // 元组(key: String , value: NSObject)
        for e in dict {
            print("\(e.key) , \(e.value)")
        }
        
        print("------------")
        
        for (a, b) in dict {
            print("\(a) , \(b)")
        }
        
    }
    
    // 合并
    func demo4() {
        
        var dict1: [String: Any] = ["name":"张", "age":18]
        
        let dict2 = ["name":"张", "sex":"man"]
        
        
        // 将dict2 合并到 dict1
        
        // 遍历 dict2 依次设置
        // 如果 key 存在 ，会修改
        // 如果 key 不存在 ，会新增
        for e in dict2 {
            dict1[e.key] = dict2[e.key]
        }
        
        print(dict1)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

