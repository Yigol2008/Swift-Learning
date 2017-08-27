//
//  ViewController.swift
//  004-尾随闭包的一个坑
//
//  Created by Yigol on 2017/8/27.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let l = UILabel()
        
        view.addSubview(l)
        
        /**
         Extra argument in call
         调用了额外的参数
         
         {
            let l = UILabel()
         
            view.addSubview(l)
         }
         
        */
            
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

