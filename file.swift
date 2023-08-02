//THere are three checked way condition in swift 
//if - switch - ternary Condation


/*
swift days 5 we will discuss the if condtion 
1-declare the condation then we will put if condition */

let age = 18 
if age >= 18 {
  print("go on")
}
let userName ="hi"
if userName == " "{
  print("hello \(userName)")
       }
  
//How to check multiple conditions
//we have && and (must two true)
//or || pipe (must one true)
//we can use enum
/* Enums, short for enumerations, are a valuable data type in programming that allows you to define a set of related named values. 
They provide a way to represent a 
fixed number of possible states or options for a particular variable. In the example you provided, the enum */

enum transport {
  case airplane , bicycle , car
}
let trans = transport.car 
if trans == .car {
  print ("god one")
} else {
  print ("no way")
}
//switch 
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//swift for loop
//for name in nameVarable {}

//A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.
var number = 1
while number <= 20 {
  print("number")
      number += 1

}

//The third way of writing loops is not commonly used

Rpeat {
    print("number")
      number += 1
} while number <= 20 
  
//we can make break in loop 
var num = 10
while num > 1 {
  print (num)
  if num == 4 {
    print ("stop")
    break 
  }

  num -= 1
}

// loop inside a loop it’s called a nested loop
for i in ...10 {
  for j in ...10 {
    let product = i*j
    print ("\(i) * \(j) = \(product)")
  }
}
//we can add outerloop, If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
//Second, add our condition inside the inner loop
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
      if product == 50 {
        print("thats great")
        break outerLoop
    }
}
}
//As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use continue instead
for i in 1...10 {
  if i % 2 == 1 {
    continue 
  }
}
//It’s common to use while loops to make infinite loops:
//To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. 
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

//for range loop for i in 1 through 5 1...5 if 1..< 5 1.<= 5 

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
/*
Haters gonna hate hate hate hate hate
*/

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//day6 in swiftui
//function

let roll = Int.random(in: 1...20)
func print(num: Int ) {
  for i in 1...12 {
    print("\(i) x \(num) = \(i * num)")
  }
}
//defination function
let arg = print (num: 5)
print (arg)
    
func areArraysEqual(array1: [Int], array2: [Int]) -> Bool {
    return Set(array1) == Set(array2)
}

let isEqual = areArraysEqual(array1: [1, 2, 3], array2: [3, 2, 1])
print(isEqual)

//
func pythagoras(a: Double, b: Double) -> Double {
 a * a + b * b

}

let c = pythagoras(a: 3, b: 4)
print(c)


//tuples to return multing value 
func get -> (firstName:string, secondName:string) {
  (firstName:"3dnan" , secondName:"lena")
}
let user = get()
print(\("Name: \(user.firstName ) , second: \(user.secondName)" )

//another solution 

      func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let (firstName, lastName) = getUser()


print("Name: \(firstName) \(lastName)")
//another 
let (firstName, _) = getUser()
print("Name: \(firstName)")

//How to customize parameter labels
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

      //trying
      func hello (name: String , user:String) -> String{
    return "hello \(name) in our \(user)"
}
var date = hello (name: "Heba" , user: "game")
print(date)
*/

//How to provide default values for parameters
      var names = ["heba","soso","momo"]
names.count
// we want to keep the array’s existing capacity.
names.removeAll(keepingCapacity: true)
names.count
//handel error 
    enum PasswordError: Error {
    case short, obvious
}
    func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
      let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
