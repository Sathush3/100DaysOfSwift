import UIKit

var greeting = "Hello, playground"

var grades = 85
// single true false conditions
if grades > 80 {
    print("you passed")
}

let myname = "Spectra"
let friendName = "Dankruso"

if myname > friendName {
    print("its \(myname) vs \(friendName)")
}

var username = "Taylor swift"

if username != "Anonymus"{
    print("Greetings \(username)")
}
if username == "" {
   username = "Anonymus"
}
if username.count == 0 {
   username = "Anonymus"
}
if username.isEmpty {
   username = "Anonymus"
}

//multiple conditions

let a = true
let b = false

if b {
    print("if b is true")
}else if a {
    print("if a is true but b false")
}else{
    print("both a and b false")
}

//combine with and

let temp = 25

if temp > 20 && temp < 30{
    print("temperature is ideal ")
}

//combine with or

let age = 18
let parentPermission = true

if age > 18 || parentPermission {
    print("You are allowed")
}
// testing all knowledge

enum TransportOption{
    case airplane,bicycle,car,helicopter,scooter
}

var userTransport : TransportOption = .airplane


if userTransport == .airplane || userTransport == .helicopter{
    print("Lets Fly")
}else if userTransport == .bicycle{
    print("I hope there is a bicycle path")
}else if userTransport == .car{
    print("Time to get stuck in traffic")
}else{
    print("Im going to hire a scooter")
}

//switch case

enum Weather{
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast{
case .sun :
    print("Its a sunny day wear a cap")
case .rain :
    print("Its a rainy day take an umbrella")
case .wind :
    print("Its a windy day wear warm ")
case .snow :
    print("Its a snowy day prepare the jackets")
case .unknown :
    print("Our forecast is broken")
}

let place  = "Metropolis"
//default statement
switch place{
case "Gotham":
    print("You are batman")
case "Wakanda" :
    print("You are black panther")
default :
    print("WHo are you ?")
}

// fall through

let day = 5
print("My true love gave to me ...")

switch day{
case 5 :
    print("5 golden rings")
    fallthrough
case 4 :
    print("4 calling birds")
    fallthrough
case 3 :
    print("3 french hens")
    fallthrough
case 2 :
    print("2 turtle doves")
    fallthrough
default :
    print("A patridge in a pear tree")
}
// ternary conditional operator

let ages = 18

let canVote = ages >= 18 ? "Yes":"No"
print(canVote)

let hours = 23
print(hours < 12 ? "its afternoon" : "Its evening")

let tempNames = ["jay","cardi","jordi"]
print(tempNames.isEmpty ? "No one" : "\(tempNames.count) people")

//using ==
enum Theme{
    case light, dark
}
let theme = Theme.dark

let background = theme == .dark ? "Black" : "Light"

print(background )
