//: [Previous](@previous)
//: # Enumerations
//: ## Giving those nasty code alias for mercier live
//: ### Does it feels like burning up there in your head? at least this one is here for convenience
enum httpCodes: Int {
    case ok = 200
    case created=201
    case unauthorized = 401
    case forbidden = 403
    // and so on
}

print(httpCodes.ok.rawValue) // rawValue untuk mengecek benar-benar isi ok

let responseCode = 201
let enumerated = httpCodes(rawValue: responseCode)
if enumerated == .created{
    print("created")
}else{
    print("hal lainnya")
}
//: [Next](@next)
