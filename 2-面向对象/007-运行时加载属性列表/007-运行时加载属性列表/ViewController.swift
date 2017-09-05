//
//  ViewController.swift
//  007-运行时加载属性列表
//
//  Created by Yigol on 2017/9/4.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        print(Person.propertyList())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

