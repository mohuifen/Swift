//
//  Swift_Overview.swift
//  Swift_Luckyfy
//
//  Created by Luckyfy on 15/12/8.
//  Copyright © 2015年 LRF. All rights reserved.
//


/* Swift 概览 */
import Foundation
import UIKit


class OverviewViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello World")
        
        /******/
         
         // 变量与常量, var 声明变量， let 声明常量
        var myVariable = 42
        myVariable = 50
        
        let myConstant = 42
        
        /******/
         
         // 类型推导
        let explicitDouble : Double = 70// 若需要指定类型
        
        let label = "The width is "
        let width = 90
        let widthStr = label + String(width)// 不支持隐式类型转换，显示类型转换
        
        /******/
        
        
        // 使用\(item) 的形式进行字符串格式化
        let apples = 3
        let oranges = 5
        
        let appleSummary = "I have \(apples) apples"
        let orangeSummary = "I have \(apples + oranges) pieces of fruit"
        
        /******/
         
         // Swift 使用[]操作符声明数组array 和字典 dictionary
        var shoppingList = ["catfish", "water", "tulips", "blue paint"]
        shoppingList[1] = "bottle of water"
        
        var occupations = [
            "Malcom" : "Captain",
            "Keylee" : "Mechanic"
        ]
        occupations["Jerry"] = "Public Relations"
        
        // 一般使用初始化器语法创建空数组和空字典
        let emptyArray = [String]()
        let empryDictionary = Dictionary<String, Float>()
        
        /******/
         
         // 控制流
        let individualScore = [75, 43, 103, 87, 12]
        var tempScore = 0
        
        for score in individualScore {
            if score > 50 {
                tempScore += 3
            } else {
                tempScore += 1
            }
        }
        
        /******/
         // 对于空值， 在类型声明后添加？ 显示标明该类型可空
        var optionalString : String? = "Hello"
        optionalString = nil;
        
        var optionalName : String? = "John Appleseed"
        var gretting = "Hello!"
        
        if let name = optionalName {
            gretting = "Hello,  \(name)"
        }
        
        /******/
         
         // 灵活的Switch
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            let vegetableComment = "Add some raisins and make ants on a log"
        case "cucumber", "watergress":
            let vegetableComment = "That would make a good tea sandwich"
        case let x where x.hasSuffix("pepper"):
            let vegetableComment = "Is it a spicy \(x)"
        default:
            let vegetableComment = "Everything tastes good in soup"
        }
        
        
        /******/
         // for in 循环
        let interestingNumbers = [
            "Prime" : [2, 3, 5, 7, 11, 13],
            "Fibonacci":[1, 1, 2, 3, 5, 8],
            "Square":[1, 4, 9, 16, 25],
        ]
        
        var largest = 0
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        
        /******/
         
         // while 循环 和repeat - while 循环
        var n = 2
        while n < 100 {
            n = n * 2
        }
        
        var m = 2
        repeat  {
            m = m * 2
        } while m < 100
        
        
        /******/
         // 区间 ..  // ...: ..
        var firstForLoop = 0
        for i in 0...3 {
            firstForLoop += i
        }
        
        var secondForLoop = 0
        for var i = 0; i < 3; ++i {
            secondForLoop += 1
        }
        
        /******/
        greet("Bob", day: "Tuesday")
        getGasPrices()
        sumOf()
        sumOf(42, 597, 12)
        returnFifteen()
        
        
        /******/
        var increate = makeIncrementer()
        increate(7)
        
        
        
        /******/
        var numbers = [20, 19, 7, 12]
        hasAnyMatches(numbers, condition: lessthanTen)
        
        
        /******/
        // 闭包，函数是特殊的闭包， 用{}声明匿名闭包
        numbers.map {
            (number : Int) -> Int in
            let result = 3 * number
            return result
        }
        
        // 当闭包的类型已知时，可简化为
        numbers.map( {number in 3 * number })
        
        
        //MARK:- 此处写法有错误，待修正
        // 还可以通过参数的位置使用参数 当函数最后一个参数是闭包时,如下代码
        //        sort([1, 5, 3, 12, 2]){"$0" > "$1"}
        
        /******/
        
        // 创建类的实例，并调用字段和方法
        var shape = Shape()
        shape.numberOfSide = 7
        var description = shape.simpleDescription()
        
        
        /******/
        let test = Square(sideLength: 5.2, name: "my test square")
        test.area()
        test.simpleDescription()
        
        
        
        
        
        
        var triangle = EquilateralTrangle(sideLength: 3.1, name: "a triangle")
        let perimeter = triangle.perimeter
        triangle.perimeter = 3.3
        let sidelength = triangle.sideLength
        
        
        
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        let squareSideLength = triangleAndSquare.square.sideLength
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        let triangleSideLength = triangleAndSquare.triangle.sideLength
        
        var counter = Counter()
        counter.incrementBy(2, numberOfTimes: 7)
        
        
        
        // 如果？ 前的值为 nilw， 那么？后面的 表达式会被忽略，而原表达式直接返回 nil
        let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        let sideLength = optionalSquare?.sideLength // 当 optionalSquare 为 nil 时，sideLength 属性调用会被忽略
        
        
        
        let ace = Rank.Jack
        let aceRawValue = ace.rawValue;
        
        
        // 在原始（raw）数值 和枚举值之间转换
        if let convertedRank = Rank.init(rawValue: 3) {
            let threeDescription = convertedRank.simpleDescription()
            
        }
        
        
        
        let success = ServerResponse.Result("6:00 am", "8:09 pm")
        let failure = ServerResponse.Error("out of cheese.")
        
        switch success {
        case let .Result(sunrise, sunset):
            let serverResponse = ""
        case let .Error(error):
            let serverResponse = "Failure... \(error)"
        }
        
        
        
        
        let threeOfSpades = Card(rank: .Three, suit: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        
        
        
        // 类型， 枚举和结构都可以实现（adopt） 协议：
        var a = simpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        
        struct SimpleStructure: ExampleProtocol {
            var simpleDescription: String = "A simple structure"
            mutating func adjust() {
                simpleDescription += "(adjusted)"
            }
        }
        
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        
        
        7.simpleDescription
        
        
        
        // 使用<> 来声明泛型函数或泛型类型
        func Repeat<T>(item: T, times: Int) -> [T] {
            var result = [T]()
            for i in 0...times {
                result.append(item)
            }
            return result
        }
        Repeat("knock",times: 4)
        
        //MARK:- 此处写法有错误，待修正
        /*
        //泛型，Swift 也支持在类、枚举和结构中使用泛型
        enum OptionalValue{
        case None
        case Some(T)
        }
        var possobleInteger: OptionalValue = .None
        possobleInteger = .Some(100)
        */
        
        
        // 有事需要对泛型做一些需求， 如需求某个泛型类型实现某个接口或继承自某个特定类型、两个泛型类型属于同一个类型等等，通过 where 描述这些需求
        func anyCommonElements<T, U where T: SequenceType, U:SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs:T, rhs:U) -> Bool {
            for lhsItem in lhs {
                for rhsItem in rhs {
                    if lhsItem == rhsItem {
                        return true
                    }
                }
            }
            return false
        }
        
        anyCommonElements([1, 2, 3],rhs: [3])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
/******************************/
 // func
 
 // 函数, func 关键字
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}

// 通过元组返回多个值
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}

// 支持带有变长参数的函数
func sumOf(numbers : Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

// 函数也可以嵌套函数
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

// 作为头等对象，函数即可以作为返回值，也可以作为参数传递
func makeIncrementer() -> (Int -> Int) {
    func addOne(number : Int) -> Int {
        return 1 + number
    }
    return addOne
}
let list = [Int]()


func hasAnyMatches(list : [Int], condition : Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessthanTen(number : Int) -> Bool {
    return number < 10
}

/*********************************/
 // class
 
 
 
 
 // 创建类, 包含字段和方法
class Shape {
    var numberOfSide = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSide) sides."
    }
}


// 通过init 构建对象，既可以使用self 显式引用成员字段，也可以隐式引用
class NameShape {
    var numberOfSide = 0
    var name : String
    
    init(name : String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSide) sides."
    }
}

// 继承和多态(override 父类方法)
class Square : NameShape {
    var sideLength : Double
    init(sideLength : Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSide = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    // simpleDescription 若没有标识override ,则会引发编译错误
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}


// 属性，为了简化代码  *** 注: setter 中，接收的值被自动命名为 newvalue
class EquilateralTrangle : NameShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength // 为子类型的属性赋值
        super.init(name: name) // 调用父类的构造器
        numberOfSide = 3 // 修改父类行的属性
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}



//  需要在赋值前后进行一些操作，使用 willSet 和 didSet  *** 注： 保证 triangle 和 square 拥有相等的 sideLength
class TriangleAndSquare {
    var triangle: EquilateralTrangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTrangle(sideLength: size, name: name)
        
    }
}



// 函数的参数名称只能在函数内部使用，但方法的参数名称除了在内部使用外，还可以在外部使用（第一个参数除外）  *** 注： numberOfTimes 面向外部，times 面向内部
class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}



// 枚举和结构
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

//  一些情况下枚举不存在有意义的原始值，这时可以直接忽略原始值
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "heart"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

// 除了可以关联方法，枚举还支持在其成员上关联值， 同一枚举的不同成员可以有不同的关联值
enum ServerResponse {
    case Result(String, String)
    case Error(String)
}


// 结构和类最大的区别 :结构的实例按值传递，而类的实例按引用传递
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription())  of \(suit.simpleDescription())"
    }
}


// Swift 使用 protocol 定义协议
protocol ExampleProtocol {
    var simpleDescription: String {get}
    mutating func adjust()
}

class simpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "Now 100% adjusted."
    }
}


// 扩展，用于在已有的类型上增加新的功能（比如新的方法或属性）
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}
