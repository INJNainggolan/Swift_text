//
//  ViewController.swift
//  3-1
//
//  Created by 许玥 on 2018/3/4.
//  Copyright © 2018年 许玥. All rights reserved.
//

import UIKit



func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}





class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var x = 1
        var y = 5
        
        swapTwoInts(&x, &y)
        print("x 现在的值 \(x), y 现在的值 \(y)")
        
        /*
        let a:Int?=100
        print(a)
        var b:Int?
        print(b)
        var c:String?="nil"
        print(c)
        let Char = "A"
        print(Char)
        var value=9
        print(++value)
        print(value++)
        var a = 10
        var b = 5
        var c=a>b
        print(c)
        var d=a<b
        print(d)
        var e = a != b
        print(e)
        var f = a == b
        print(f)
        let a = 2<5 && 7>5
        print(a)
        let b = 2>5 && 7>5
        print(b)
        let c = 2>5 || 7>5
        print(c)
        let d = 2>5 || 7<5
        print(d)
        let e = 2<5 || 7<5
        print(e)
        let f = !(7<10)
        print(f)
        let g = !(7>10)
        print(g)
        var a:UInt8 = 0b11111100
        var b:UInt8 = 0b00111111
        var c = a & b
        print(c)
        var d = a | b
        print(d)
        var e = a ^ b
        print(e)
        var f = ~a
        print(f)
        var g = a << 4
        print(g)
        var h = b >> 4
        print(h)
        var a = 1
        print(a)
        a+=10
        print(a)
        a*=10
        print(a)
        a-=10
        print(a)
        a/=3
        print(a)
        let a = MemoryLayout<Int>.size
        print(a)
        let b = MemoryLayout<Float>.size
        print(b)
        let c = MemoryLayout<Character>.size
        print(c)
        let d = MemoryLayout<String>.size
        print(d)
        var a:Int?=10
        print(a)
        print(a!)
        a! += 20
        print(a!)
        for index in 1...5{
            print(index)
        }
        for index in 1..<5{
            print(index)
        }
        var minvalue = UInt8.min
        minvalue = minvalue &- 1
        print(minvalue)
        var maxvalue = UInt8.max
        maxvalue = maxvalue &+ 1
        print(maxvalue)
        var x=0
//        var y = 10 &/ x
//        print(y)
        
        let a:UInt8 = 200
        let b:UInt16 = 2000
        let c = UInt16(a) + b
        print(c)
        
        let a = 3
        let b = 10.55555
        let c = Double(a) + b
        print(c)
        let d:Float = 10.22
        let e = Float(a) + d
        print(e)
        
        var a:String = "Hello World"
        print(a)
        print(a.characters.count)
        let b:String = "Thank"
        var c:String = a + b
        print(c)
        print(a == b)
        print(a.uppercased())
        print(a.lowercased())
        print(a.isEmpty)
        
        let str = "Hello, playground"
        
        if str.hasPrefix("Hello") { // true
            print("Prefix exists")
        }
        
        if str.hasSuffix("ground") { // true
            print("Suffix exists")
        }
        
        var a:[Any] = [1, 2, "Hello"]
        print(a)
        var b:[Any] = []
        print(b)
        var c:[Int] = [1, 2, 3]
        print(c)
        
        var a = [1, 2, 3, 4, 5, 6]
        print("a数组的元素个数：\(a.count)")
//        a += [7]
        print(a)
        a.removeLast()
        print(a)
        print(a.isEmpty)
        var someArray = [Any]()
        var someInts = [Int](repeating: 0, count: 3)
        print(someInts)
        for x in 0...10{
            print("\(x) ", terminator: "")
        }
    
        
        var name = "菜鸟教程"
        var site = "http://www.runoob.com"
        
        print("\(name)的官网地址为：\(site)")
        
        var myString:String? = nil
        
        if myString != nil {
            print(myString)
        }else{
            print("字符串为 nil")
        }
        var myString:String?
        
        myString = "Hello, Swift!"
        
        if myString != nil {
            print(myString)
        }else{
            print("myString 值为 nil")
        }
        var myString:String!
        
        myString = "Hello, Swift!"
        
        if myString != nil {
            print(myString)
        }else{
            print("myString 值为 nil")
        }
        
        var myString:String?
        
        myString = "Hello, Swift!"
        
        if let yourString = myString {
            print("你的字符串值为 - \(yourString)")
        }else{
            print("你的字符串没有值")
        }
        // 使用字符串字面量
        var stringA = "Hello, World!"
        print( stringA )
        
        // String 实例化
        var stringB = String("Hello, World!")
        print( stringB )
        // stringA 可被修改
        var stringA = "菜鸟教程："
        stringA += "http://www.runoob.com"
        print( stringA )
        
        var someInts = [Int](repeating: 10, count: 3)
        
        var someVar = someInts[0]
        
        print( "第一个元素的值 \(someVar)" )
        print( "第二个元素的值 \(someInts[1])" )
        print( "第三个元素的值 \(someInts[2])" )
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        print(someDict)
        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        var someVar = someDict[1]
        
        print( "key = 1 的值为 \(someVar)" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
        print(someDict)
        
        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        var oldVal = someDict.updateValue("four", forKey: 1)
        
        var someVar = someDict[1]
        
        print( "key = 1 旧的值 \(oldVal)" )
        print( "key = 1 的值为 \(someVar)" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
        print(someDict)
        
        
        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        var oldVal = someDict[1]
        someDict[1] = "One 新的值"
        var someVar = someDict[1]
        
        print( "key = 1 旧的值 \(oldVal)" )
        print( "key = 1 的值为 \(someVar)" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
        print(someDict)
        
        
        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        print( "key = 1 的值为 \(someDict[1])" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
        
        var removedValue = someDict.removeValue(forKey: 4)
        
        print( "key = 1 的值为 \(someDict[1])" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
        print(removedValue)
        
        
        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        someDict[2] = nil
        
        print( "key = 1 的值为 \(someDict[1])" )
        print( "key = 2 的值为 \(someDict[2])" )
        print( "key = 3 的值为 \(someDict[3])" )
        
        

        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        for (key, value) in someDict {
            print("字典 key \(key) -  字典 value \(value)")
        }
        

        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        for (key, value) in someDict.enumerated() {
            print("字典 key \(key) -  字典 (key, value) 对 \(value)")
        }
        
        
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        let dictKeys = [Int](someDict.keys)
        let dictValues = [String](someDict.values)
        
        print("输出字典的键(key)")
        
        for (key) in dictKeys {
            print("\(key)")
        }
        
        print("输出字典的值(value)")
        
        for (value) in dictValues {
            print("\(value)")
        }
        
        var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        var someDict2:[Int:String] = [1:"Four", 2:"Five", 3:"Six"]
        
        print("someDict1 含有 \(someDict1.count) 个键值对")
        print(someDict1)
        print("someDict2 含有 \(someDict2.count) 个键值对")
        print(someDict2)*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

