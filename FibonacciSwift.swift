import Foundation

let initialSequence = [0, 1]

// Fibonacci Series without Recursion
func fibonacciForNumber(number: Int) -> [Int] {
    var sequence = [0, 1]

    if number <= 1 {
        return initialSequence
    }

    for index in 0...number - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

// Fibonacci Series with Recursion
func fibonacciForNumberRecursion(number: Int, first: Int, second: Int) -> [Int] {
    if number == 0 {
        return []
    }
    return [first + second] + fibonacciForNumberRecursion(number: number-1, first: second, second: (first+second))
}

let fib = fibonacciForNumber(number:5)
print(fib)

let fibRecur = initialSequence + fibonacciForNumberRecursion(number:5, first: 0, second: 1)
print(fibRecur)
