//
//  ViewController.swift
//  006-构造函数
//
//  Created by Yigol on 2017/8/27.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // 实例化 person
        // () -> alloc / init
        // () swift 中对应一个函数 init() 构造函数
        // 作用：给成员变量分配空间，初始化成员变量
        let p = Person()
        
        print(p)
        // <_06_ÊûÑÈÄ†ÂáΩÊï∞.Person: 0x608000011f90>
        
        
        /**
         
         在 swift 中，所有类都默认有一个命名空间，就是项目名称
         
         */
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

