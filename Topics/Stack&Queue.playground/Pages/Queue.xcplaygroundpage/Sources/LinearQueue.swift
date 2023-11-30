import Foundation

public class LinearQueue {
    
    private var array: [Int?]
    private var rear: Int, front: Int
    
    public init() {
        array = [Int?](repeating: nil, count: 5)
        rear = -1 ; front = -1
    }
    
    public func push(value: Int) {
        rear = rear + 1
        array[rear] = value
    }
    
    public func pop() {
        front = front + 1
    }
    
    public func peek() -> Int? {
        return array[front+1]
    }
    
    public func isEmpty() -> Bool {
        return rear == front
    }
    
    public func isFull() -> Bool {
        return rear == array.count - 1
    }
}

/*
print("LinearQueue")
var linearQueue = LinearQueue()

print("isEmpty: \(linearQueue.isEmpty())")
print("isFull: \(linearQueue.isFull())")

linearQueue.push(value: 11)
print("peek: \(String(describing: linearQueue.peek()))")

print("isEmpty: \(linearQueue.isEmpty())")
print("isFull: \(linearQueue.isFull())")

linearQueue.push(value: 22)
linearQueue.push(value: 33)
linearQueue.push(value: 44)
linearQueue.push(value: 55)
print("peek: \(String(describing: linearQueue.peek()))")

print("isEmpty: \(linearQueue.isEmpty())")
print("isFull: \(linearQueue.isFull())")

print("peek: \(String(describing: linearQueue.peek()))")
linearQueue.pop()
print("peek: \(String(describing: linearQueue.peek()))")
*/
