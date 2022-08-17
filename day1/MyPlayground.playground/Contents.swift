import UIKit
import Foundation

var greeting = "Hello, playground"
print(greeting)
greeting = "Day 1 swift"
let salute = "first app"
var tester:String
let numb:Int

print(salute)

let filename = "picture.jpg"
let result = "😃 use cmd + cntrl + space"

print(result)

let quote = "how to use doble quote in string Use \"backslash\""
print(quote)

let multiline = """
now i can type
multiline strings in swift
but they must stand and end in new line
"""
print(salute.count)
print(result.uppercased())
print(greeting.hasPrefix("Day 1"))
print(filename.hasSuffix(".png"))

let score = 10
let reallyBig = 100_000_000
print(reallyBig)

var count = 10
count += 5
print(count)
count /= 2
count *= 5

print(score.isMultiple(of: 2))
