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
