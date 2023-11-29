import UIKit

//##########################################################################################################################
/*
func factorial( number : Int) -> Int {
    var result = 1
    
    for index in 1...number {
        result *= index
    }
    
    return result
}

let number = 5
let result = factorial(number: number)
print("Factorial of \(number)! is \(result)")
*/
//##########################################################################################################################

//##########################################################################################################################
/*
func isPrimeNumber(number: Int) -> Bool {
    
    for index in 2..<number {
        if number % index == 0 {
            return false
        }
    }
    
    return true
}

let number1 = 11
let result1 = isPrimeNumber(number: number1)
print("\(number1) is \(result1 ? "a Prime number":"not a Prime number")")
*/
//##########################################################################################################################

//##########################################################################################################################
/*
func primeNumbers(from startNumber: Int, till endNumber: Int) {
    print("Prime from 2 till \(number)")
    for index in startNumber...endNumber {
        let result = isPrimeNumber(number: index)
        if result {
            print("\(index)")
        }
    }
}

primeNumbers(from: 40, till: 50)
*/
//##########################################################################################################################

//##########################################################################################################################
/*
func decimalToBinary(decimalNumber: Int) {
    
    var number = decimalNumber
    var binary: [Int] = []
    while number > 0 {
        binary.append(number%2)
        number = number/2
    }
    binary = binary.reversed()
    print("Binary of \(decimalNumber) is \(binary)")
}

decimalToBinary(decimalNumber: 10)
 */
//##########################################################################################################################

//##########################################################################################################################
/*
func linearSearch(array: [Int], key: Int) -> Int? {
    
    for (index,_) in array.enumerated() {
        if array[index] == key {
            return index
        }
    }
    
    return nil
}

let array = [88, 33, 66, 99, 11, 77, 22, 55, 44]
let key = 44

if let index = linearSearch(array: array, key: key) {
    print("Key \"\(key)\" found at Index \(index)")
} else {
    print("Key \"\(key)\" not found!")
}
 */
//##########################################################################################################################

//##########################################################################################################################
/*
func binarySearch(array: [Int], key: Int) -> Int? {
    print("Binary Search")
    print("Search Index of Key \(key) in Array \(array) ")
    
    var left = 0
    var right = array.count - 1
    var mid = 0
    
    while left <= right {

        mid = (left+right)/2

        if key == array[mid] {
            print("Key \"\(key)\" found at Index \(mid)")
            return mid
        }
        
        if key > array[mid] {
            left = mid+1
        } else {
            right = mid-1
        }
    }
    
    print("Key \"\(key)\" not found!")
    return nil
}

let array = [11, 22, 33, 44, 55, 66, 77, 88, 99]
let key = 55
binarySearch(array: array, key: key)
*/
//##########################################################################################################################

//##########################################################################################################################

//func twoDArray() {
//    let numbers100x100 = [[Int]]  (repeating: [Int](repeating: 1, count: 5), count: 5)
//    
//    for numbers100 in numbers100x100 {
//        print("\(numbers100)")
//    }
//}
//twoDArray()

//##########################################################################################################################
