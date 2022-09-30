//
//  TestViewController.swift
//  DigitalCountry
//
//  Created by 倪尛 on 2022/9/28.
//

import UIKit

//enum People { case adult, child, senior }
enum People {
    case adult,student,child,senior
}
class TestViewController: BaseVController {

    
    var stringArray = ["james","wade","Bob","lucy"]
    var intArray = [1, 2, 3, 4, 5, 6, 3]
    var doubleArray = [1.0, 2.0, 3.0]
    
    var myUsername: String?
    var myPassword: String?
    var person: People = .adult
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        printStringArray(a: stringArray)
//        print("--------分界线-----------")
//        printintArray(a: intArray)
//        print("--------分界线-----------")
//        printdoubleArray(a: doubleArray)
//        print("--------分界线---------------------------")
//        printElementFromArray(a: stringArray)
//        printElementFromArray(a: intArray)
//        printElementFromArray(a: doubleArray)
//        myUsername = "12132123"
//        myPassword = "23231232"
//        userLoginMethod()
//        person = "Adult"
        
        person = .senior
        
//        enumTypemethod()
        judgeFilterMethod()
        
    }
    func judgeFilterMethod() {
//        var newEvent = [Int]()
//        for i in 1...10 {
//            if i & 1 == 0 {
//                newEvent.append(i)
//            }
//        }
//        print("偶数是\(newEvent)")
//        var evens = Array(1...10).filter { $0 % 2 == 0 }
        
//       过滤器函数的使用: filter替代上面的For-Loop。这里也推荐大家更多的使用高阶函数。
        
        let resultArray = Array(1...12).filter { (item) -> Bool in
             return item%2 == 0
        }
        let result = Array(1...12).filter { return $0 % 2 == 0 }
        var newevents = Array(1...12).filter { $0 & 1 != 0 }
        print("偶数是\(newevents)")
    }
    func enumTypemethod(){
//        switch person {
//        case "Adult":
//            print("Pay $7")
//        case "Student":
//            print("Pay $5")
//        case "Child":
//            print("Pay $3")
//        case "Senior":
//            print("Pay $1")
//        default:
//            print("You alive, bruh?")
//        }
        switch person {
        case .adult:
            print("Pay $7")
        case .student:
            print("Pay $5")
        case .child:
            print("Pay $3")
        case .senior:
            print("Pay $1")
        default:
            print("You alive, bruh?")
        }
    }
    func userLoginMethod(){
//        1. 普通版本代码结构嵌套冗余，进阶版本更加一目了然。
//        2. 在判断一些前提必要条件的时候，推荐使用guard let。
//        if let username = myUsername,let password = myPassword {
//            print("Welcome, \(username)")
//        }
        //进阶版
        guard let username = myUsername,let password = myPassword else{
            return;
        }
        print("Welcome, \(username)")
    }
    func loopMethod (){
        // 当我们不需要使用循环中的变量时，我们可以使用For Loop和_来代替While Loop
        //第一种
        var i = 0
        while 5 > i {
            print("count\(i)")
            i += 1
        }
        //第二种
        for a in 1...5 {
            print("count\(a)")
        }
    }
    func plus(a: Int, b: Int) -> Int{
        return a + b
    }
    func reduce(a: Int, b: Int, c: Int) -> Int {
        return a + b - c
    }
    func square(x: Int) -> Int {
        return x * x
    }
    func printStringArray(a:[String]){
        for s in a {
            print("stringArray----\(s)")
        }
    }
    func printintArray(a:[Int]){
        for s in a {
            print("printintArray----\(s)")
        }
    }
    func printdoubleArray(a:[Double]){
        for s in a {
            print("printdoubleArray----\(s)")
        }
    }
    func printElementFromArray<T>(a:[T]){
        for element in a {
            print("泛型Generics------\(element)")
        }
    }
}
