//: [Previous](@previous)
//: # Class vs Struct
//: ## Class
//: ### an extensible program-code-template for creating objects, providing initial values for state (member variables) and implementations of behavior (member functions or methods) - Wikipedia
class Vehicle {
    var numberOfTires: Int?
    var passengerCapacity: Int?
    var name: String?

    func drive() {
        print("ngeeengggg")
    }
}

// class dan struct sama tetapi beda di memory handling. class pass by reference, struct pass by value

// hak akses modifier :
// private ==> class itu sendiri
// internal (protected di swift) ==> hanya bisa diakses di module sendiri
// public
// fileprivate ==> private di file tertentu.

//: ## Object Oriented Programming
//: ### lets get back a bit to basic, shall we?
//: 1. Information Hiding
//: 2. I*********e
//: 3. p********ism
//: Challenge: let's discuss and make example of those concept
class Car: Vehicle { // car inherit dr vehicle
    func test() {
        print(passengerCapacity)
    }
    
    override func drive() {
        print("broom")
    }
}

let v = Vehicle()
let c = Car()

let carVehicle = c as Vehicle
carVehicle.drive()



//: ### AS, AS?, AS!
// as untuk yg normal
// as? untuk yg optional
// as! ==> maksa convert apapun yg terjadi. kalo gagal throw exception

//let newCar: Any = 456
//let newVehicle = newCar as? Vehicle // coba convert newCar ke Vehicle bisa apa ga, kalo gagal nanti nil sepertinya


let newCar: Any = Car()

if let newVehicle = newCar as? Vehicle {
    newVehicle.drive()
} else {
    print("failed to type cast")
}



//: ## Struct
//: ### a composite data type (or record) declaration that defines a physically grouped list of variables to be placed under one name in a block of memory, allowing the different variables to be accessed via a single pointer, or the struct declared name which returns the same address.
struct CarStruct {
    let model: String
    let year: String
    let make: String
    let seatCount: Int
    
    func drive() {
        
    }
}



//: ## Keep movin' forward!!!
//: [Next](@next)
