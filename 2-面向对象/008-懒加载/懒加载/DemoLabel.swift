//
//  DemoLabel.swift
//  懒加载
//
//  Created by Yigol on 2017/5/25.
//  Copyright © 2017年 Yigol. All rights reserved.
//

// 用模型的 didSet 设置 UI

import UIKit

class DemoLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    // 模型 -> 给视图设置模型， 由视图自己根据模型的数量，决定显示内容
    var pp : Person? {
        // 就是替代 oc 中重写 setter 方法
        // 区别：再也不需要考虑 _成员变量 = 值
        // oc 中如果是 copy 属性 应该 _成员变量 = 值
        didSet {
            text = pp?.name
        }
    }
    
    
    
    
    
    
}
