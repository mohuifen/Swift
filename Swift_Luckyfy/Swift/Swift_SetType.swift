//
//  Swift_SetType.swift
//  Swift_Luckyfy
//
//  Created by LRF on 15/12/22.
//  Copyright © 2015年 LRF. All rights reserved.
//

/*Swift———集合类型 */
import Foundation
import UIKit

class SetType: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
//MARK: 数组
        // 初始化
        var shoppongList: String[] = ["Eggs", "Milk"]
        
        print("The shopping list contains \(shoppongList.count) items.")
        
        
        // 检查数组长度是否为0
        if shoppongList.isEmpty {
            print("The shopping list is empty")
        } else {
            print("The shopping list is not empty")
        }
        
        
        // 在数组末尾增加一个元素
        shoppongList.append("Flour")
        shoppongList += "Baking Powder"
        
        shoppongList += ["Chocolate Spread", "Cheese", "Butter"]
        
        // 下标语法
        var firstItem = shoppongList[0]
        shoppongList[0] = "Six eggs"
        
        shoppongList[4...6] = ["Bananas", "Apples"]
        
        // 插入一个值
        shoppongList.insert("Maple Syrup", atIndex: 0)
        
        // 删除
        let mapleSyrup = shoppongList.removeAtIndex(0)
        let apples = shoppongList.removeLast()
        
        
        // 遍历
        for item in shoppongList  {
            print(item)
        }
        
        for (index, value) in enumetate(shoppongList) {
            print("Item \(index + 1): \(value)")
        }
        
        // 初始化
        var someInts = Int[]()
        print("someInts is of type Int[] with \(someInts.count) items.")

        someInts.append(3)
        someInts = []
        
        var threeDoubles = Double[](count: 3, repeatedValue: 0.0)
        
        var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
        var sixDoubles = threeDoubles + anotherThreeDoubles
        
        
        
        
//MARK: 字典
        
        // 初始化
        var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
        
        airports = ["TYO": "Tokyo", "DUB": "Dublin"]
        print("The dictionary of airports contains \(airports.count) items.")
        
        // 添加元素
        airports["LHR"] = "London"
        
        // 修改元素
        airports["LHR"] = "London Heathrow"

        // updateValue(forKey:)
        if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
        
        
        if let airportName = airports["DUB"] {
            print("The name of the airport is \(airportName)）.")
        } else  {
            print("That airport is not in the airports dictionary.")
        }
        
        // 移除
        
        airports["APL"] = "Apple International"
        airports["APL"] = nil
        
        if let removedValue = airports.removeValueForKey("DUB") {
            print("The removed airport`s name is \(removedValue)）.")
        } else {
            print("The airports dictionary does not contain a value for DUB.")
        }
        
        
        // 遍历
        
        for (airportCode, airportName) in airports {
            print("\(airportCode): \(airportName)")
        }

        for airportCode in airports.keys {
            print("Airport code: \(airportCode)")
        }
        
        for airportName in airports.values {
            print("Airport name:\(airportName)")
        }
        
        let airportCodes = Array(airports.keys)
        let airportNames = Array(airports.values)
        
        
        
        // 创建空字典
        var namesOfIntegers = Dictionary<Int, String>()
        
        namesOfIntegers[16] = "sixteen"
        namesOfIntegers = [:]
        
        
        
        
        
        
        
    }
}