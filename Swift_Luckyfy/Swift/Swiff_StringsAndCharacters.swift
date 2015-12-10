//
//  Swiff_StringsAndCharacters.swift
//  Swift_Luckyfy
//
//  Created by LRF on 15/12/10.
//  Copyright © 2015年 LRF. All rights reserved.
//

import Foundation
import UIKit


class StringsAndCharacters: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初始化字符串
        var emptyString = ""
        var anotherEmptyString = String()
        
        // 检查一个字符串是否为空
        if emptyString.isEmpty {
            print("Noting to see here")
            
        }
        
        // 遍历字符串
//        for chatacter: in "Dog!" {
//            print(chatacter)
//        }
        
        
        // 字符计数
        let unusualMennagerie = "Koala, Snail, Penguin, Dromedary"
//        print("unusualMennagerie has \(count(unusualMennagerie)) characters")
        
        // 是否有前缀
        unusualMennagerie.hasPrefix("Koala")
        // 是否有后缀
        unusualMennagerie.hasSuffix("ry")
        
        // 大写字符串
        unusualMennagerie.uppercaseString
        
        // 小写字母
        unusualMennagerie.lowercaseString
        
        
        
    }
}