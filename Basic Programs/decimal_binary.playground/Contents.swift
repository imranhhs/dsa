import UIKit

print("Decimal To Binary")

func decimalToBinary (decimal: Int) {
    var number = decimal
    while (number > 0) {
        print("\(number%2)")
        number = number/2
    }
}

decimalToBinary(decimal:10)
