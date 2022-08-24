import UIKit

var greeting = "Hello, playground"

//functions

func showWelcome(){
    print("this is function")
    print(greeting)
}

showWelcome()

let number = 10

if number.isMultiple(of: 2){
    print("Even")
}else{
    print("Odd")
}

let roll = Int.random(in: 1...10)

func printMultiples(number: Int){
    for i in 1...10{
        print(" the multiple of \(number) x \(i) is \(i*number)")
    }
    
}
printMultiples(number: 5)

func multiples (start:Int , end:Int){
    print(start*end)
}

// returning vlaues

func diceRoller() -> Int{
    return Int.random(in: 1...6)
}

let rolling = diceRoller()
print(rolling)

// comparing strings

//bif version
func comparerString (firstWord: String, secondWord: String) -> Bool{
    let result:Bool
    
    if firstWord.sorted() == secondWord.sorted(){
        result = true
    }else{
        result = false
    }
   return result
 
}
//shortened version
func areLettersIdentical1 (firstWord: String, secondWord: String) -> Bool{
    return firstWord.sorted() == secondWord.sorted()
}
//further shortended
//if only 1 line in fnunction can skip the return keyword as the statement will return a value
func areLettersIdentical2 (firstWord: String, secondWord: String) -> Bool{
    firstWord.sorted() == secondWord.sorted()
}

//pythogoras theorm code big

func pythogoras(a:Double, b:Double) -> Double{
    
    let input = a*a + b*b
    let root = sqrt(input)
    return root
}

print(pythogoras(a: 3, b: 4))

func pythogorasTheorm(a:Double, b:Double) -> Double{
    sqrt(a*a + b*b)
}

print(pythogorasTheorm(a: 3, b: 4))

// return multiple values

func getUser() -> [String]{
    ["taylor","swift"]
}

func getUser2() -> [String:String]{
    ["firstname":"Taylor","Lastname":"Swift"]
}
let user1 = getUser2()
print("name : \(user1["firstname",default:"anonymus" ]) \(user1["lastname", default: "Anonymus"])")

func getUser3() -> (firstname: String, lastname:String){
    (firstname:"Taylor",lastname:"Swift")
    
}

let user = getUser3()
print("name : \(user.firstname) \(user.lastname)")

//seperating directly
let (firstname, lastname) = getUser3()
print("\(firstname) \(lastname)")

//ignoring specific part
let (firstName, _) = getUser3()
print("\(firstName) ")

func getUser4() -> (firstname: String, lastname:String){
    ("taylor","swift")
}

let user2 = getUser4()
print("name : \(user.0) \(user.1)")

// swift seperates with parameters
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }


// naming parameters

func printTimetable(for number: Int){
    
    for i in 1...10{
        print("\(i) * \(number) = \(i*number)")
    }
}
printTimetable(for: 5)

// hide external name

func isUpperCase (_ string:String)-> Bool{
    string == string.uppercased()
}

let word = "HELLO"

let result = isUpperCase(word)
