//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let label = UILabel(frame:CGRect(x: 0, y: 0, width: 200, height: 50))
label.text = "My Label"
label.font = UIFont.systemFont(ofSize: 15)
label.textColor = UIColor.blue
label.backgroundColor = UIColor.brown
label.textAlignment = .center
label.layer.cornerRadius = 10
label.clipsToBounds = true

label

