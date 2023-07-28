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
