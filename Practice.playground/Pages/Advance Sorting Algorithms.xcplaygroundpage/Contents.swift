//: [Previous](@previous)

import Foundation

enum PivotPosition {
    case left
    case right
    case midean
    //case random   //Pending
}

var swapCount = 0


//##########################################################################################################################
func quickSort(array: inout [Int], left: Int, right: Int, pivotPosition: PivotPosition = PivotPosition.left, isAscending: Bool = true) {
    //print("array = \(array), left = \(left), right = \(right)")
    
    //Terminating Condition
    if left >= right { return }
    
    var pivot = array[left] //Default //Not recomended
    let median = (left + right) / 2

    switch pivotPosition {
    case .left:
        pivot = array[left]
    case .right:
        pivot = array[right]
    case .midean:
        pivot = array[median]
    }

    print("pivot = \(pivot)")
    
    var i = left, j = right

    while i < j {
        
        switch pivotPosition {
        case .left:
            if isAscending {
                while i <= right && array[i] <= pivot { i = i + 1 }     //I = Left Marker
                while j >= left && array[j] > pivot { j = j - 1 }       //J = Right Marker
            } else {    //Descending Order
                while i <= right && array[i] >= pivot { i = i + 1 }     //I = Left Marker
                while j >= left && array[j] < pivot { j = j - 1 }       //J = Right Marker
            }
        case .midean:
            if isAscending {
                while i <= right && array[i] <= pivot { i = i + 1 }     //I = Left Marker
                while j >= left && array[j] > pivot { j = j - 1 }       //J = Right Marker
            } else {    //Descending Order
                //ToDo: Not working
                while i <= right && array[i] >= pivot { i = i + 1 }     //I = Left Marker
                while j >= left && array[j] < pivot { j = j - 1 }       //J = Right Marker
            }
            
        case .right:
            if isAscending {
                while i <= right && array[i] < pivot { i = i + 1 }      //I = Left Marker
                while j >= left && array[j] >= pivot { j = j - 1 }      //J = Right Marker
            } else {    //Descending Order
                while i <= right && array[i] > pivot { i = i + 1 }      //I = Left Marker
                while j >= left && array[j] <= pivot { j = j - 1 }      //J = Right Marker
            }
        }

        if i < j { array.swapAt(i, j); swapCount += 1 }
    }

    switch pivotPosition {
    case .left:
        array.swapAt(left, j)
        swapCount += 1
        print("Itr \(array)")
        
        quickSort(array: &array, left: left, right: j-1)    //Recursive Call - LEFT Partition
        quickSort(array: &array, left: j+1, right: right)   //Recursive Call - RIGHT Partition
    
    case .midean:
        array.swapAt(median, j)
        swapCount += 1
        print("Itr \(array)")

        quickSort(array: &array, left: left, right: j-1)    //Recursive Call - LEFT Partition
        quickSort(array: &array, left: j+1, right: right)   //Recursive Call - RIGHT Partition
        
    case .right:
        array.swapAt(right, i)
        swapCount += 1
        print("Itr \(array)")
        
        quickSort(array: &array, left: left, right: i-1)    //Recursive Call - LEFT Partition
        quickSort(array: &array, left: i+1, right: right)   //Recursive Call - RIGHT Partition
    }
}

print("Quick Sort")
swapCount = 0
var array = [66,33,99,11,77,22,55,44,88]
print("Unsorted Array: ", array)
quickSort(array: &array, left: 0, right: array.count-1)
print("Sorted Array  : ", array)
print("Swap Count = \(swapCount)")
//##########################################################################################################################



//##########################################################################################################################
func mergeSort(array: inout [Int], left: Int, right: Int) {
     //print("Left: \(left) Right:\(right)")

    //Terminating Condition
    if left >= right { return }
    
    let mid = (left + right) / 2

    //Recursive Call - Left Partition
    //print("Call Left Partition Merge Sort")
    mergeSort(array: &array, left: left, right: mid)

    //Recursive Call - Right Partition
    //print("Call Right Partition Merge Sort")
    mergeSort(array: &array, left: mid+1, right: right)
    
    //Merge Sort Logic
    var i = left, j = mid+1
    var tempArray: [Int] = []
    
    // Merging/Copying smaller values to temp array by comparing two partion with help of i and j
    while i <= mid && j <= right {
        //if array[i] > array[j] {    //Descending Order
        if array[i] < array[j] {
            tempArray.append(array[i])
            i += 1
        } else {
            tempArray.append(array[j])
            j += 1
        }
    }
    
    //After i and j comparison copy the remaining elements in i or j
    while i <= mid {
        tempArray.append(array[i])
        i += 1
    }
    while j <= right {
        tempArray.append(array[j])
        j += 1
    }
    
    //
    for (index, number) in tempArray.enumerated() {
        array[left+index] = number
    }

    print("Itr:", array)
}

//print("Merge Sort")
//var array = [66,33,99,11,77,22,88,44,55]
//print("Unsorted Array: ", array)
//mergeSort(array: &array, left: 0, right: array.count-1)
//print("Sorted Array  : ", array)
//##########################################################################################################################

//: [Next](@next)
