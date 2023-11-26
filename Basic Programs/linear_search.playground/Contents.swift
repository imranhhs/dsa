import UIKit

print("Linear Search")

func linearSearch(array: [Int], key:Int) -> Int? {
    for (index, number) in array.enumerated() {
        if number == key {
            return index
        }
    }
    return nil
}

let randomArray = [88, 33, 66, 99, 11, 77, 22, 55, 11]
let number = 55
let index = linearSearch(array: randomArray, key: number)
if let index = index {
    print("Number \(number) found at Index \(index)")
} else {
    print("Number \(number) not found!")
}
