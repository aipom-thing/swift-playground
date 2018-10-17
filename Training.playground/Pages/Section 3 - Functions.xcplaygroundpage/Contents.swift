//: [Previous](@previous)
//: # Functions
//: ### Let me show you an example
func greet(_ person: String, _ day: String) -> String {
    print(person)
    print(person ?? "default") //untuk kasih default value dengan tanda tanya double. jadi jika person kosong, akan diisi default
    return "Hello \(person), today is \(day)"
}

func greet(person: String) -> String {
    return "Hello \(person)"
}

func greet(orang person: String) -> String {
    print(person)
    return "ASD"
}

func greeting(person: String, withSalute salute: String) -> String{
    return salute
}

func greetings(person: String, withSalute salute: String = "SALUTEE") -> String{
    return salute
}

func greetings_optional(person: String?, withSalute salute: String = "SALUTEE") -> (String){
    print(person!)
    return salute
}


var selamat = greet("thing", "monday")
print(selamat)

var orang_hehe = greeting(person: "orang", withSalute: "hehe")
print(orang_hehe)

var orang_hehes = greetings(person: "orang")
print(orang_hehes)

var orang_hehes1 = greetings_optional(person: "orang hehe")
print(orang_hehes1)

import UIKit
func showError(from: UIViewController) {
    
    
    // another code
    
//    from.present(viewController, animated: true, completion: nil)
}

func showMessage(from: UIViewController) {
//    from
}

var aaaa: [String] = ["haha","hihi","huhu", "hehe"]

//aaaa.remove(at: 0)

aaaa.remove(at: 3)

aaaa.index(of: "huhu")
aaaa.index(after: 1)

func index(_ element: String) {
    
}

func index(_ number: Int) {
    
}

index("asdf")
index(123)
print(aaaa)


// overloading

//greet(person: "John", day: "Doom's Day")
greet("John", "")
greet(person: "asdf")
greet(orang: "asdf")
//showErrorMessage(from: navigationViewController)
//greet(person: <#T##String#>, day: <#T##String#>)


//: ## Return a compound value from a function
func abc() -> Int {
    return 0
}


// tupple
func calculateStats() -> (Int, Int, Int?) { // mean, min, max {
    return (1,2,3)
}

let result = calculateStats()
print(result.0)
print(result.1)
print(result.2!)
print(result.2)


//: ## Function that return function
//: ### So that it is able to reproduce now, eh?
func makeIncrementor() -> (Int) -> Int {
    func addOne(_ input: Int) -> Int {
        return input + 1
    }
    
    func addTwo(_ input: Int) -> Int {
        return input + 2
    }
    
    addOne(1)
    addTwo(2)
    
    return addTwo(_:)
}

let newFunc = makeIncrementor()
newFunc(2)
print(newFunc(2))


//: ## Function that receive another function
//: ### 😒 Canibal too?
let arr = [1,2,3,4,5,6,7,8,9,10]

func filter(from array: [Int], with method: (Int) -> Bool) -> [Int] {
    var newArray: [Int] = []
    
    for element in array where method(element) {
        newArray.append(element)
    }
    print("test")
    return newArray
}

func filterMethod(_ input: Int) -> Bool {
    return input % 2 == 0
}

//let asd = filter(from: arr, with: filterMethod)
//print(asd)

//: ## Let's move on!
//: [Next](@next)
