import UIKit

print("Factorial")

func factorial (number: Int) {
    var result = 1
    for index in 1...number  {
        result *= index
    }
    print("Factorial of \(number)! is \(result)")
}

factorial(number:5)

