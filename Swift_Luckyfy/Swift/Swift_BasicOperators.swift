//
//  Swift_BasicOperators.swift
//  Swift_Luckyfy
//
//  Created by LRF on 15/12/9.
//  Copyright © 2015年 LRF. All rights reserved.
//

import Foundation
import UIKit

class BasicOperators: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 字符串连接
        "hello," + "world"
        
        // 两个字符 或者一个字符一个字符串
//        let dog: Character = "dog"
//        let cow: Character = "cow"
//        let dogcow = dog + cow
        
        
        
        // 取模运算符
        var result = 9 % 4
        result = -9 % 4
//        result = 8.0 % 2.5
        
        
        // 范围运算符
        // 封闭范围运算符
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        // 半封闭范围运算符
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
//        for i in 0..count {
//            print("Person \(i+1) is called \(names[i])")
//        }
        
        
        
        
    }
    
}