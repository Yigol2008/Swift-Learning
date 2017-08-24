//
//  ViewController.swift
//  006-字符串
//
//  Created by Yigol on 2017/8/21.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demo3()
    }
    
    // 字符串的遍历
    func demo() {
        
        // NSString 不支持以下方式遍历
        let str: String = "我要飞的更高"
        
        for c in str.characters {
            print(c)
        }
    }
    
    // 字符的长度
    func demo1() {
        
        let str: String = "hello world您好"
        
        // 返回指定编码的对应的字节数量
        // UTF8 的编码（0~4个），每个汉字 3 个字节
        print(str.lengthOfBytes(using: .utf8))
        
        // 字符串长度 - 返回字符的个数（推荐使用）
        print(str.characters.count)
        
        // 使用 NSString 中转
        /**
         str as NSString
         swift 中可以使用 ‘值 as 类型’ 类型转换
         */
        let ocStr = str as NSString
        print(ocStr.length)
        
    }
    
    // 字符串拼接
    func demo2() {
        
        let name = "老王"
        let age = 18
        let title: String? = "BOSS"
        let point = CGPoint(x: 100, y: 200)
        
        
        // \(常量/遍历)
        // 字符串的拼接需要注意 可选项 Optional
        // NSStingFromCGPoint(point)
        let str = "\(name)\(age)\(title ?? "")\(point)"
        print(str)
    }
    
    // 格式化
    func demo3() {
        let h = 8
        let m = 9
        let s = 6
        
        let dateStr = "\(h):\(m):\(s)"
        print(dateStr)
        
        // 使用格式字符串 格式化
        let dateStr1 = String(format: "%02d:%02d:%02d", h,m,s)
        print(dateStr1)
        
    }
    
    // 字符串的子串
    func demo4() {
        
        // 一般建议使用 NSString 作为中转，应为swift取字符串方法一直在优化
        let str = "我们一起去飞"
        
        // 1 NSString
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        print(s1)
        
        
        // 2 String 的 swift 3.0 方法
        print(str.startIndex)
        print(str.endIndex)
        
        let s2 = str.substring(from: "我们".endIndex)
        print(s2)
        
        let s3 = str.substring(from: "abc".endIndex)
        print(s3)
        
        // 取子字符串的范围
        guard let range = str.range(of: "一起") else {
            print("没有找到字符串")
            return
        }
        // 一定找到的范围
        print(range)
        print(str.substring(with: range))
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

