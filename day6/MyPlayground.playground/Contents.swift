import UIKit

var greeting = "Hello, playground"

//loops

let platforms = ["Ios","macos","tvos","watchos"]

for os in platforms{
    print("Swift works better in \(os)")
}

//for loops

for i in 1...12{
    print("the number is \(i) and 5 * \(i) is \(5*i)")
}

//nested loop
for i in 1...12 {
    print("the i is \(i)")
    
    for j in 1...12{
        print("J is \(j) so i and j is \(i*j)")
    }
    print()// starts new line
}
//range without last item

for i in 1..<5{
    print(i)
}

// no loop variable coz no use

var lyric = "Let haters "
for _ in 1...5{
    lyric += " hate"
}

print(lyric)

//while loops

var countdown = 10

while countdown>0 {
    print("time until launch \(countdown)")
    countdown -= 1
    
}
print("blastoff")

// random int

let id = Int.random(in: 1...1000)
print(id)

// random double

let db = Double.random(in: 0...2)
print(db)

// make a loop to roll until we get 20 from 20 dice

var roll = 0
// loop until we get 20
while roll != 20 {
    print("Roll again. this roll is \(roll)")
    roll = Int.random(in: 1...20)
    
}
//loop ended when 20 is rolled
print("Critical hit")

var number: Int = 10
while number > 0 {
    number -= 2
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}

//continue

let fileName = ["work.jpg","school.png","school.jpeg","road.webp"]

for file in fileName{
    
    if file.hasSuffix("webp"){
        continue
    }
    print("files are \(file)")
}

//break

let number1 = 4
let number2 = 14

var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
    }
    
    if multiples.count == 10{
        break
    }
    
}
print(multiples)

// fizz buzz challenge

for i in 1...100{
    
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("fizzbuzz")
    }else if i.isMultiple(of: 3){
        print("fizz")
    }else if i.isMultiple(of: 5){
        print("Buzz")
    }else{
        print(i)
    }
    
}
