import UIKit

var greeting = "Hello, playground"

func printTimeTable(For number:Int, end:Int = 12){
    for i in 1...end{
        print("\(number) x \(i) = \(i*number)")
    }
}

printTimeTable(For: 3, end: 10)
printTimeTable(For: 5)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
// removes all but keeps the memory allocated for array for repopulation
characters.removeAll(keepingCapacity: true)
print(characters.count)


//Error handling
//first step list errors
enum PasswordErrors: Error{
    case short, obvious
}
// second step function with throws
func checkPasswordStrength( _ password: String) throws -> String{
    
    if password.count < 5{
        throw PasswordErrors.short
    }
    
    if password == "12345"{
        throw PasswordErrors.obvious
    }
    
    if password.count < 8 {
        return "OK"
    }else if password.count < 10{
        return "Good"
    }else{
        return "Excellend"
    }
}

// third step run function and handle errors

let newPassword = "12345"
do{
    let result = try checkPasswordStrength(newPassword)
    print("The rating for password is \(result)")
}catch{
    print("There was an error")
}
//catching specific errors
do{
    let result2 = try checkPasswordStrength(newPassword)
    print("The rating for password is \(result2)")
}catch PasswordErrors.short{
    print("Password too short")
}catch PasswordErrors.obvious{
    print("THis is similar to my luggage password")
}catch{
    print("There was an error")
    // use error.localizedDescription
}

//checkpoint 4
// squre root finder for whole numbers only
enum BoundaryErrors: Error{
    case outOfBounds, noRoot
}

func squareRootFinder(rootOf number: Int) throws -> Int{
    var result = 0
    if number < 1{
        throw BoundaryErrors.outOfBounds
    }else if number > 10_000{
        throw BoundaryErrors.outOfBounds
    }else{
        for i in 2...100{
            if number % i == 0{
                if number == i*i{
                    result = i
                    break
                }else{
                    continue
                }
            }else{
                continue
            }
        }
        if result == 0{
            throw BoundaryErrors.noRoot
        }
        return result
    }
}


let inputNumber = 169

do{
    let results = try squareRootFinder(rootOf: inputNumber)
    print("The squre root of \(inputNumber) is \(results)")
}catch BoundaryErrors.outOfBounds{
    print("Input out of bounds")
}catch BoundaryErrors.noRoot{
    print("No root found")
}catch{
    print("An error occured")
}


