//
//  Person.swift
//  006-构造函数
//
//  Created by Yigol on 2017/8/27.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit
/**
 'Person' cannot be constructed because it has no accessible initializers
  Person 类没有初始化，构造函数，可以有多个，默认是 init
 */
class Person: NSObject {
    
    var name: String
    
    override init() {
        
    }
    
}
