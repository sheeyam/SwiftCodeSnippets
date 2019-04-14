import Foundation

// Find Number greater than 3
func greaterThanThree(value: Int) -> Bool {
    return value > 3
}

// Number Divided by 5
func divisionByFive(value: Int) -> Bool {
    return value % 5 == 0
}

//Closure Function
func filterwithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int]{
    var filteredSetOfNUms = [Int]()
    for num in numbers {
        if closure(num){
            filteredSetOfNUms.append(num)
        }
        
    }
    return filteredSetOfNUms
}

let filteredList01 = filterwithPredicateClosure(closure: greaterThanThree, numbers:  [1,2,3,4,5,6])
print(filteredList01)

let filteredList02 = filterwithPredicateClosure(closure: divisionByFive, numbers:  [1,2,3,4,5,6])
print(filteredList02)
