//: [Previous](@previous)
//: # Protocols
//: ### Defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality
// protocol sama dengan interface di java

protocol TestProtocol{
    func test() -> String
}

class A: TestProtocol{
    func test() -> String {
        return ""
    }
    
    func baru(){
        
    }
    
}
//: # Extensions
//: ### Add new functionality to an existing class, structure, enumeration, or protocol type
extension A {
    func beta(){
        
    }
}

let a = A()
a.beta()


// bisa extension string bawaannya
extension String{
    
}

//: ## Do you have extra will power to click this button? Well, I dare you!
//: [Next](@next)
