//: [Previous](@previous)

import Foundation

var functionCallCount = 0

//##########################################################################################################################
//Fn = F(n-1) + F(n-2)
//F0 = 0 , F1 = 1 , F2 = 1 , F3 = 2, F4 = 3, F5 = 5, F6 = 8
func fibonacci(number:  Int) -> Int {
    functionCallCount += 1
    
    if number == 1 || number == 2 {
        return 1
    }
    
    return fibonacci(number: number - 1) + fibonacci(number: number - 2)
}

functionCallCount = 0
let number = 10
var result = fibonacci(number: number)
print("Fibonacci of \(number) = \(result) and  Function Calls = \(functionCallCount) ")
//##########################################################################################################################

//##########################################################################################################################
func fibonacci_Memoization(number: Int, terms: inout [Int]) -> Int {
    functionCallCount += 1
    
    if terms[number] != 0 {
        return terms[number]
    }
    
    terms[number] = fibonacci_Memoization(number: number - 1, terms: &terms) + fibonacci_Memoization(number: number - 2, terms: &terms)
    
    return terms[number]
}

functionCallCount = 0
var terms = [Int](repeating: 0, count: number+1)
terms[1] = 1
terms[2] = 1
result = fibonacci_Memoization(number: number, terms: &terms)
print("Fibonacci (Memoization) of \(number) = \(result) and  Function Calls = \(functionCallCount) ")
//##########################################################################################################################

//##########################################################################################################################
func fibonacci_DP(number: Int) -> (fibonacci: Int, loopCount: Int) {
    functionCallCount += 1
    
    var terms = [Int](repeating: 0, count: number+1)
    terms[1] = 1
    terms[2] = 1
    
    var loopCount = 0
    
    for index in 3...number {
        loopCount += 1
        terms[index] = terms[index - 1] + terms[index - 2]
    }
    
    return (terms[number],loopCount)
}

functionCallCount = 0
let tupleResult = fibonacci_DP(number: number)
print("Fibonacci (Dynamic Programming) of \(number) = \(tupleResult.fibonacci) and  Function Calls = \(functionCallCount) but Loop Counts = \(tupleResult.loopCount)")
//##########################################################################################################################

//: [Next](@next)
