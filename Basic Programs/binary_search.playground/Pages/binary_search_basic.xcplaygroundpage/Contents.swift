import UIKit

print("Binary Search")

func binarySearch(array: [Int], key:Int) -> Int? {
    var l = 0
    var r = array.count - 1
    var m = 0
    
    while l <= r {
        m = (l+r) / 2
        
        if key == array[m] {
            return m
        } else if key > array[m] {
            l = m+1
        } else {    // key < array[m]
            r = m-1
        }
    }
    return nil
}

let randomArray = [11,22,33,44,55,66,77,88,99]
let number = 55
let index = binarySearch(array: randomArray, key: number)
if let index = index {
    print("Number \(number) found at Index \(index)")
} else {
    print("Number \(number) not found!")
}
