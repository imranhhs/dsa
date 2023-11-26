import UIKit

print("Prime Numbers")

func primeNumbers(number: Int) {
    for index in 2...number {
        isPrime(number: index)
    }
}

func isPrime(number: Int) {
    var i = 2
    for index in i ..< number {
        if number % index == 0 {
            break
        }
        i += 1
    }
    if (i == number) {
        print("\(number) is a Prime Number")
    } else {
        //print("\(number) is not a Prime Number")
    }
}

primeNumbers(number:11)
