import UIKit

var greeting = "Hello, playground"

var authentication = false
authentication = !authentication
print(authentication)
authentication.toggle()
print(authentication)


let firstPart = "Hello,"
let secondPart = "World!"

let greetings = firstPart + secondPart
let greet = firstPart + "new" + secondPart
print(greetings)
print(greet)

let name = "Rob"
let age  = 23

let message = "My name is \(name) and my age is \(age) years"
print(message)


var celcius:Double = 23.5

var fahrenheight = (celcius/9) + 32

print("The celcius value is \(celcius)° and fahreingheit is \(fahrenheight.rounded())° 😆")
