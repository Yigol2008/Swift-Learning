//
//  ViewController.swift
//  懒加载
//
//  Created by Yigol on 2017/5/25.
//  Copyright © 2017年 Yigol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    /// label 变量
    var label : DemoLabel?
    
    /// 懒加载
    /// 懒加载本质上是一个闭包
    lazy var label1 : DemoLabel = DemoLabel()
    
    /// 懒加载完整写法
    lazy var label2 = { () -> DemoLabel in
        let l = DemoLabel()
        return l
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUI()
        
    }
    
    func setupUI() {
        
        label  = DemoLabel()
        view.addSubview(label!)
        label?.text = "helll"
        label?.sizeToFit()
        label?.center = view.center
        label?.textColor = UIColor.red
        
        
        label1.text = "hahh"
        
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

