import UIKit


class Stack {
    private var array: [Int?]
    private var top: Int = -1
    
    init() {
        // perform some initialization here
        array = [Int?](repeating: nil, count: 5)
        top = -1
    }
    
    func push(value: Int) {
        top = top + 1
        array[top] = value
    }
    
    func pop() {
        top = top - 1
    }
    
    func peek() -> Int? {
        return array [top]
    }
    
    func isEmpty() -> Bool {
        return top == -1
    }
    
    func isFull() -> Bool {
        return top == array.count - 1
    }
}

print("Stack")
var stack = Stack()

print("isEmpty: \(stack.isEmpty())")
print("isFull: \(stack.isFull())")

stack.push(value: 10)
print("Stack peek: \(String(describing: stack.peek()))")

print("isEmpty: \(stack.isEmpty())")
print("isFull: \(stack.isFull())")

stack.push(value: 20)
stack.push(value: 30)
stack.push(value: 40)
stack.push(value: 50)
print("Stack peek: \(String(describing: stack.peek()))")

print("isEmpty: \(stack.isEmpty())")
print("isFull: \(stack.isFull())")

print("Stack peek: \(String(describing: stack.peek()))")
stack.pop()
print("Stack peek: \(String(describing: stack.peek()))")
