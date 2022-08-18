import UIKit

var greeting = "Hello, playground"

var number = [5,6,7,8]

var names = ["john","ram","sid"]

print(number[1])

names.append("ron")

var scores = Array<Int>()
scores.append(100)
scores.append(20)
scores.append(80)
scores.append(50)

print(scores[2])

var character = [String]()
character.append("pam")
character.append("ram")
character.append("vam")
character.append("wam")
character.append("tam")

print(character.count)

character.popLast()

print(character)

character.remove(at: 1)

print(character)

character.removeAll()
print(character.count)

let citites:[String] = ["London","Hungary","italy","rome","us","australia"]
print(citites.contains("italy"))
print(citites.sorted())
var reversedCitites = citites.reversed()
print(reversedCitites)

let employer = ["name":"Taylor swift","job":"Singer","location":"Nashville"]

print(employer["name"])
print(employer["song"])

let cast = [
    11:"Taylor swift",
    22:"Singer",
    33:"Nashville"
]

print(cast[44, default: "Unknown"])
print(cast[22])

var heights = [String:Int]()
heights["dan"] = 229
heights["rob"] = 33

var actors = Set(["Robin william","Tom Cruise","Dwayne Johnson","Jason stathom","Jack Sparrow"])
print(actors)
actors.insert("Nicholas Cage")

enum Weekdays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekdays.monday
day = Weekdays.tuesday
day = .wednesday

var days:Weekdays = .tuesday
days = .friday



