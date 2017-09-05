//
//  Person.swift
//  懒加载
//
//  Created by Yigol on 2017/5/25.
//  Copyright © 2017年 Yigol. All rights reserved.
//

// 计算性属性

import UIKit

class Person: NSObject {
    
    // getter && setter 仅用演示， 日常开发不用
    private var _name : String?
    
    // swift 中一般不会重写 getter 和 setter 方法
    var name : String? {
        get {
            // 返回 _成员变量
            return _name
        }
        set {
            // 使用 _成员变量 记录值
            _name = newValue
        }
    }
    
    // oc中定义属性的时候， 有一个 readnly - 重写 getter 方法
    var title : String {
        // 只重写了 getter 方法， 没有重写 setter 方法
        get {
            return "Mr." + (name ?? "")
        }
    }
    
    // 只读属性的简写 - 直接 return
    // 又称为 “计算性属性” -> 本身不保存内容，都是通过计算获取结果
    // 类似一个 函数
    // 没有参数
    // 一定有返回值
    var title2 : String {
        
        return "Mr.XXX" + (name ?? "")
    }
    
    // 懒加载的 title ，本质是一个闭包
    // 懒加载会在第一次访问的时候执行，闭包执行结束后，会把结果保存在 title3 中
    // 后续调用， 直接返回 title3 的内容
    // 懒加载的属性会分配空间存储值！
    lazy var title3 : String? = {
        return "Lazy" + (self.name ?? "")
    }()
    
    
    
}
