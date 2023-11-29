//: [Previous](@previous)

import Foundation

var functionCallCount = 0

//##########################################################################################################################
// n! = 1 * 2 * 3 * ... * n
// n! = n * (n-1)!
// 0! == 1
func factorial(number: Int) -> Int {
    functionCallCount += 1
    if number == 0 {
        return 1
    }
    
    return number * factorial(number: number-1)
}

//functionCallCount = 0
//let number = 5
//let result = factorial(number: number)
//print("Factorial of \(number)! is \(result)")
//print("FunctionCallCount = \(functionCallCount)")
//##########################################################################################################################


//##########################################################################################################################
//X^y = X * (X^y-1)
//X^0 = 1
func myPower(number: Int, power: Int) -> Int {
    functionCallCount += 1
    if power == 0 {
        return 1
    }
    
    return number * myPower(number: number, power: power-1)
}

//functionCallCount = 0
//let number = 2
//let power = 10
//let result = myPower(number: number, power: power)
//print("\(number)^\(power) = \(result)")
//print("FunctionCallCount = \(functionCallCount)")
//##########################################################################################################################

//##########################################################################################################################
func binarySearch(array: [Int], key: Int, left: Int, right: Int) -> Int? {
    
    //if left > right { return nil }
    
    let mid = (left + right) / 2
    
    if array[mid] == key {
        return mid
    }
    
    if key > array[mid] {
        if mid + 1 > right { return nil }
        return binarySearch(array: array, key: key, left: mid + 1, right: right)
    } else {
        if left > mid-1 { return nil }
        return binarySearch(array: array, key: key, left: left, right: mid - 1)
    }
}

let array = [11, 22, 33, 44, 55, 66, 77, 88, 99]
let key = 88
print("Binary Search - Recursion")
if let result = binarySearch(array: array, key: key, left: 0, right: array.count - 1) {
    print("Key \(key) found at Index = \(result)")
} else {
    print("Key \(key) not found!")
}
//##########################################################################################################################

//: [Next](@next)
