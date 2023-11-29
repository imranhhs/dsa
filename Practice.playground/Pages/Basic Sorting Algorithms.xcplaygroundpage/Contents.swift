//: [Previous](@previous)

import Foundation

func selectionSort(array: inout [Int]) {
    print("Selection Sort")
    //After every Iteration we get smallest values at the begining of the array

    var comparisonCount = 0
    var swapCount = 0
    
    for i in 0..<array.count-1 {
        for j in i+1...array.count-1 {
            comparisonCount += 1
            if array[i] > array[j] {
                //Swap values at i and j Index
                array.swapAt(i, j)
                swapCount += 1
            }
            //print("ItrJ\(j) - \(array)")
        }
        print("ItrI\(i) - \(array)")
    }
    
    print("Total Comparison = \(comparisonCount)")
    print("Total Swappings = \(swapCount)")
}

func bubbleSort(array: inout [Int]) {
    print("Bubble Sort")
    //After every iteration we get largest values at the end of the array
    
    var comparisonCount = 0
    var swapCount = 0

    // Further Improved as we are checkking for swaps if no swaps then it means the array is already sorted and there is no need for further Iterations.
    var isSwapped = false
    
    for i in 1...array.count-1 {
        isSwapped = false
        //for j in 0..<array.count-1 {  //5*5 = 25 Iterations O(n2)
        //Improved as we are skipping already sorted elements at the end. 5+4+3+2+1 = 15 Iterations O(n2) n(n-1)/2 i.e (6(5))/2 = 15
        for j in 0..<array.count-i {
            comparisonCount += 1
            if array[j] > array[j+1] {
                //Swap values at i and j Index
                array.swapAt(j, j+1)
                swapCount += 1
                isSwapped = true
            }
            //print("ItrJ\(j) - \(array)")
        }
        print("ItrI\(i) - \(array)")
        //print(" ")
        
        if !isSwapped { //Array is Sorted.
            //return
        }
    }
    
    print("Total Comparison = \(comparisonCount)")
    print("Total Swappings = \(swapCount)")
}

func insertionSort(array: inout [Int]) {
    print("Insertion Sort")
    //After every Iteration we get sorted array till ith
    
    var comparisonCount = 0
    var shiftCount = 0

    var jIndex = 0
    var sortedArray = array
    
    for i in 1...sortedArray.count-1 {
        let temp = sortedArray[i]
        jIndex = i
        for j in stride(from: i-1, through: 0, by: -1) {//where sortedArray[j] > temp {
            comparisonCount += 1

            if sortedArray[j] > temp {
                //Shift the element to right side
                sortedArray[j+1] = sortedArray[j]
                shiftCount += 1
                jIndex = j
            }
            //print("ItrJ\(j) - \(sortedArray)")
        }
        sortedArray[jIndex] = temp
        
        print("ItrI\(i) - \(sortedArray)")
    }
    
    array = sortedArray
    
    print("Total Comparison = \(comparisonCount)")
    print("Total Shiffting = \(shiftCount)")
}

var array = [66,55,44,33,22,11]
print("Unsorted Array: ", array)
selectionSort(array: &array)    //var array = [44,11,55,22,66,33]
print("Sorted Array  : ", array)

print("")

array = [66,44,55,22,11,33]
print("Unsorted Array: ", array)
bubbleSort(array: &array)       //var array = [66,33,55,22,44,11]   //var array = [22,11,44,33,66,55]   //var array = [11,22,33,44,55,66]
print("Sorted Array  : ", array)

print("")

array = [11,22,33,44,55,66]
print("Unsorted Array: ", array)
insertionSort(array: &array)
print("Sorted Array  : ", array)


//: [Next](@next)
