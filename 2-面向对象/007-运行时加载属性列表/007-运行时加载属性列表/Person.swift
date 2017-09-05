//
//  Person.swift
//  007-运行时加载属性列表
//
//  Created by Yigol on 2017/9/4.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String?
    // 基本数据类型，在 oc 中没有可选，如果定义成可选，运行时同样获取不到，使用kvc会崩溃
    // var age: Int?
    var age: Int = 0
    
    // private 的属性，使用运行时，同样获取不到属性（可以获取到ivar），同样会让kvc崩溃
    var title: String?
    
    
    // 目标：使用运行时 获取当前类所有属性的数组
    // 获取 ivar 列表是所有第三方框架字典转模型的基础
    class func propertyList() -> [String] {
        
        var count: UInt32 = 0
        // 1, 获取‘类’的属性列表，返回属性列表的数组，可选
        let list = class_copyPropertyList(self, &count)
        
        print("属性数量 = \(count)")
        
        var tempArr = [String]()
        
//        // 2，遍历数组
//        for i in 0..<Int(count) {
//            
//            // 3，根据下标获取属性
//            // objc_property_t?
//            let pty = list?[i]
//            
//            // 4，获取 属性 的名称，c 语言字符串
//            // Int8 -> Byte -> Char -> c语言字符串
//            let cName = property_getName(pty)
//            
//            // 5，转换成 String 的字符串
//            let name = String(utf8String: cName!)
//            
//            print(name!)
//            
//            tempArr.append(name!)
//        }
        
        
        // 2，遍历数组
        for i in 0..<Int(count) {
            
            //使用 guard 语法，依次判断每一项是否有值，只要有一项为nil，就不再执行后续代码
            guard let pty = list?[i],
                let cName = property_getName(pty),
                let name = String(utf8String: cName)
                else {
                // 继续遍历下一个
                continue
            }
            
            print(name)
            
            tempArr.append(name)
        }
        
        
        // 6，释放 c 语言对象
        free(list)
        
        return tempArr
    }
    
    
}
