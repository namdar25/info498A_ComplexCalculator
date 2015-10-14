//
//  main.swift
//  Complex Calculator
//
//  Created by Shawn Namdar on 10/13/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

func add (num1: Int, num2: Int) -> Int {
    return num1 + num2

}

func subtract (num1: Int, num2: Int) -> Int {
    return num1 - num2
    
}

func multiply (num1: Int, num2: Int) -> Int {
    return num1 * num2
    
}

func divide (num1: Int, num2: Int) -> Int {
    return num1 / num2
    
}

func genericOperation (left : Int, right : Int, op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}

func sumOfArray (numbers: [Int]) ->Int {
    
    var sum = 0
    
    for var index = 0; index < numbers.count; ++index {
        sum += numbers[index]
    }
    
    return sum
}

func productOfArray (numbers: [Int]) ->Int {
    
    var sum = 1
    
    for var index = 0; index < numbers.count; ++index {
        sum *= numbers[index]
    }
    
    return sum
}

func countOfArray (numbers: [Int]) ->Int {
    return numbers.count
    
}

func avgOfArray (numbers: [Int]) ->Int {
    return (sumOfArray(numbers)/numbers.count)
    
}

func genericArrayOperation (numbers: [Int], op : [Int] -> Int) -> Int {
    return op(numbers)
}

func addPoints(var point1: (Int,Int), point2: (Int,Int)) -> (Int,Int) {
    point1.0 += point2.0
    point1.1 += point2.1
    
    return point1
    
}

func subtractPoints(var point1: (Int,Int), point2: (Int,Int)) -> (Int,Int) {
    point1.0 -= point2.0
    point1.1 -= point2.1
    
    return point1
    
}

func addDictionaries(dictionary1: Dictionary <String, Int>, dictionary2: Dictionary <String, Int>) -> Dictionary <String, Int>? {
    var result = Dictionary <String, Int>()
    if dictionary1["x"] != nil && dictionary2["x"] != nil{
     result["x"] = dictionary1["x"]! + dictionary2["x"]!
    }
    else{
        return nil
    }
    if dictionary1["y"] != nil && dictionary2["y"] != nil{
        result["y"] = dictionary1["y"]! + dictionary2["y"]!
    }
    else{
        return nil
    }
    return result
}

func subtractDictionaries(dictionary1: Dictionary <String, Int>, dictionary2: Dictionary <String, Int>) -> Dictionary <String, Int>? {
    var result = Dictionary <String, Int>()
    if dictionary1["x"] != nil && dictionary2["x"] != nil{
        result["x"] = dictionary1["x"]! - dictionary2["x"]!
    }
    else{
        return nil
    }
    if dictionary1["y"] != nil && dictionary2["y"] != nil{
        result["y"] = dictionary1["y"]! - dictionary2["y"]!
    }
    else{
        return nil
    }
    return result
}

//TESTS

print(add(5,num2: 6))
print(subtract(5,num2: 6))
print(multiply(5,num2: 6))
print(divide(5,num2: 6))
print(genericOperation(5, right: 6, op: add))
print(genericOperation(5, right: 6, op: subtract))
print(genericOperation(5, right: 6, op: multiply))
print(genericOperation(5, right: 6, op: divide))
print(sumOfArray([4,5,6]))
print(productOfArray([4,5,6]))
print(countOfArray([4,5,6]))
print(avgOfArray([4,5,6]))
print(genericArrayOperation([4,5,6], op: sumOfArray))
print(genericArrayOperation([4,5,6], op: productOfArray))
print(genericArrayOperation([4,5,6], op: countOfArray))
print(genericArrayOperation([4,5,6], op: avgOfArray))
print(addPoints((4,9), point2: (5,6)))
print(subtractPoints((4,9), point2: (5,6)))

let dictionaryA = [
    "x" : 2,
    "y" : 4
]

let dictionaryB = [
    "x" : 6,
    "y" : 3
]

let dictionaryC = [
    "cat" : 5,
    "y" : 7
]

let dictionaryD = [
    "x" : 1,
    "dog" : 9
]


print(addDictionaries(dictionaryA, dictionary2: dictionaryB))
print(addDictionaries(dictionaryA, dictionary2: dictionaryC))//expect nil
print(addDictionaries(dictionaryB, dictionary2: dictionaryD))//expect nil
print(addDictionaries(dictionaryC, dictionary2: dictionaryD))//expect nil
print(subtractDictionaries(dictionaryA, dictionary2: dictionaryB))
print(subtractDictionaries(dictionaryA, dictionary2: dictionaryC))//expect nil
print(subtractDictionaries(dictionaryB, dictionary2: dictionaryD))//expect nil
print(subtractDictionaries(dictionaryC, dictionary2: dictionaryD))//expect nil























