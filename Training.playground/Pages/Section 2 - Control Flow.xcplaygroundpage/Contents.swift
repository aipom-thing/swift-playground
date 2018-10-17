
//: [Previous](@previous)
//: 👈 _thou shall always be able to restart from previous checkpoint_
//: # Let's Learn `Control Flow`
//: ### A program only can only do these 3 things, so it is depends on us as developer to make it looks smart
//: 1. Sequential Execution
//: 2. Selection
//: 3. Loop

//: ## Conditional Control Flow (Selection)
//: ### if - else statement
let a = 100
let b = 11

if a==100, b==11{
    print("yeay!!")
}


if a % 2 == 0, b % 2 == 0 {
    print("genap")
} else if b == 10 {
    print("asdf")
} else {
    print("ganjil")
}


//: #### switch - case
let foo = 1
switch foo {
case 1, 5, 6: print("isinya 1")
case 2: print("isinya 2")
case 3: print("isinya 3")
default: print("apapun") //wajib ada
}


//: ### Guard statement
let optional: Int? = nil

func test() {
    guard let unwrapped = optional else { return }
    print(unwrapped)
}
test()

var optional_1: Int? = nil
func test1(){
    guard optional_1 == 123 else{
        print("nil")
        return
    }
    print(optional_1)
}

test1()


//:  if - let
if let unwrapped = optional {
    print(unwrapped)
} else {
    print("isinya nil")
}


//var optional_1 = nil
//if let unwrapped = optional {
//    print(unwrapped)
//} else {
//    optional_1 = 123
//    print("isinya nil")
//}

//: ## Iterative Control Flow (Loop)
//: ### for - in loop
let array = [1,2,3,4,5,6]

for element in array {
    print(element)
}


//for (int i = 1; i<10; i++)

for i in 1..<10 {
    print(i)
}


//for (int i = 1; i<=10; i++)

for i in 1...10 {
    print(i)
}




//: ### while loop
var numerator = 0
while numerator < 10 {
    print(numerator)
    numerator += 1
}



//: ### repeat - while loop
print(numerator)
repeat {
    print(numerator)
    numerator += 1
} while numerator < 10



//: ## selection x loop
let newArray = [1,2,3,4,5,6,7,8,9,10]

for element in newArray where element % 2 == 0 {
    print(element)
}



//: ## Let's call it a wrap!
//: [Next](@next)
