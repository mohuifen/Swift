//
//  Swift_TheUnderlyingDataType.swift
//  Swift_Luckyfy
//
//  Created by LRF on 15/12/9.
//  Copyright © 2015年 LRF. All rights reserved.
//

/* Swift —— 基础数据类型 */
import Foundation
import UIKit

class TheUnderlyingDataType: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // 常量和变量
        let maximumNumberOfLoginAttempts = 10
        var currentLoginAttempt = 0
        
        // 一行声明多个变量或常量
        var x = 0.0, y = 0.0, z = 0.0
        
        
        // 类型注解, 声明一个叫welcomeMessage的变量，它的类型是String
        var welcomeMessage: String = "hello"
        
        
        // 常量和变量的命名
        let π = 3.14159
        let 你好 = "你好世界"
//        let = "dogcow"
        
        let `let` = "保留字"
        
        // 变量friendlyWelcome的值从“Hello!”被修改为”Bonjour!”
        var friendlyWelcom = "hello!"
        friendlyWelcom = "Bonjour!"
        
        
        // 输出
        print(friendlyWelcom)
        
        print("The current value of friendlyWelcom is \(friendlyWelcom)")
        
        // 多行注释嵌套
        /* this is the start of the first multiline comment
        /* this is the second, nested multiline comment */
        this is the end of the first multiline comment */
        
        
        // 整数边界
        let minValue = UInt8.min
        let maxValue = UInt8.max
        
        // 类型推导，不用说它是什么类型，Swift推断出你想要的常量是一个整数，因为你已经初始化它为一个整数
        let meaningOfLife = 42
        
        let pi = 3.14159
        let anotherPi = 3+0.14159
        
        
        /*
        整型常量可以写成：
        
        一个十进制数，不带前缀
        一个二进制数，用前缀0b
        一个八进制数，用0o前缀
        一个十六进制数，以0x前缀
        */
        let decimalInteger = 17
        let binaryInteger = 0b10001
        let octalInteger = 0o21
        let hexadecimalInteger = 0x11
        
        
        /*
        如下这些浮点常量都表示十进制的12.1875
        */
        let decimalDouble = 12.1875
        let exponentDouble = 1.21875e1
        let hexadecimalDouble = 0xC.3p0
        
        
        
        //整数和浮点数都可以被额外的零填充，并且可以包含下划线，以增加可读性
        let paddedDouble = 000123.456
        let oneMillion = 1_000_000
        let justOverOneMillion = 1_000_000.000_000_1
        
        
        // 一个Int8常量或变量可以存储范围-128到127之间的数，而一个UInt8常量或变量可以存储0到255之间的数字
        
        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)

        
        // 整数和浮点类型之间的转化必须显式声明
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        let pi2 = Double(three) + pointOneFourOneFiveNine
        
        
        // 类型别名
        typealias AudioSample = UInt16
        
        var maxAmplitudeFound = AudioSample.min
        
        
        
        // 布尔类型
        let orangesAreOrange = true
        let turnipsAreDelicious = false
        
        let i = 1
        if i==1 {
           //
        }
        
        // 元组
        let http404Error = (404, "NotFound")
        let (statusCode, statusMessage)  = http404Error
        print(statusCode)
        print(statusMessage)
        
        let (justTheStatusCode, _) = http404Error
        print(justTheStatusCode)
        
        print(http404Error.0)
        
        // 在创建一个元组的时候，也可以直接指定每个元素的名称，然后直接使用元组名.元素名访问
        let http200Status = (statusCode: 200, description: "OK")
//        print("\(http404Error.statussCode)")
        
        
        
        // 将一个字符串转换为一个Int类型
        let possibleNumber = "123"
//        let convertedNumber = possibleNumber.toInt
        let convertedNumber = 123

        
//        if convertedNumber {
//        } else {
//            
//        }
        
        
        // 如果possibleNumber.toInt 返回的这个可选Int类型包含一个值，那么定义一个常量actualNumber来等于这个值，并在 后续代码中直接使用。
//        if let actualNumber = possibleNumber.toInt() {
//            //
//        }
        
        //  可以给可选类型指定一个特殊的值 nil
        var serverResponseCode: Int? = 404
        serverResponseCode = nil;
        
        
        // 可选类型和解包可选类型之间的区别。
        let posiibleString: String? = "An optional string."
        print(posiibleString!)
        
        let assumedString: String! = "An implicitly unwrapped optional stirng."
        print(assumedString)
        
        
        
        // 断言 当前一个条件返回false的时候，后面的错误日志将会输出。
        let age = -3
        assert(age >= 0,"A person`s age cannot be less than zero")
        assert(age >= 0)
        
    }
    

    
    
}

