import Foundation

public class CircularQueue {
    
    private var array: [Int?]
    private var rear: Int, front: Int
    var arraySize = 0
    
    public init(queueSize size: Int) {
        array = [Int?](repeating: nil, count: size)
        rear = -1 ; front = -1
        arraySize = size
    }
    
    public func push(value: Int) {
        rear = (rear + 1) % arraySize
        array[rear] = value
    }
    
    public func pop() {
        front = (front + 1) % arraySize
        
        if front == rear {
            //Reset front and rear to -1
            rear = -1
            front = -1
        }
    }
    
    public func peek() -> Int? {
        return array[ (front + 1) % arraySize ]
    }
    
    public func isEmpty() -> Bool {
        if rear == front && rear == -1 {
            return true
        }
        
        return false
    }
    
    public func isFull() -> Bool {
        
        if (front == -1 && rear == arraySize-1) || (front == rear && rear != -1) {
            return true
        }
        
        return false
    }
    
    func display() {
        print("array = \(array)")
    }
}

/*
print("Circular Queue")
var queue = CircularQueue(queueSize: 5)

queue.display()
print("isEmpty: \(queue.isEmpty())")
print("isFull: \(queue.isFull())")

queue.push(value: 11)

queue.display()
print("isEmpty: \(queue.isEmpty())")
print("isFull: \(queue.isFull())")

queue.push(value: 22)
queue.push(value: 33)
queue.push(value: 44)
queue.push(value: 55)

queue.display()
print("isEmpty: \(queue.isEmpty())")
print("isFull: \(queue.isFull())")

queue.push(value: 66)
queue.push(value: 77)

queue.display()
print("isEmpty: \(queue.isEmpty())")
print("isFull: \(queue.isFull())")

print("peek: \(String(describing: queue.peek()))")
*/
