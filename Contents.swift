import UIKit

//Syntax
//public class SomePublicClass {}
//internal class SomeInternalClass {}
//private class SomePrivateClass {}
//
//public var somePublicVariable = 0
//internal let someInternalConstant = 0
//private func somePrivateFunction() {}


// Private function
private func sum(a: Int, b: Int) {
   let a = a + b
   let b = a - b
   print(a, b)
}

// Calling the function
sum(a: 20, b: 10)
sum(a: 40, b: 10)
sum(a: 24, b: 6)

// Enumeration
public enum Student {
   case Name(String)
   case Mark(Int, Int, Int)
}

var studDetails = Student.Name("Swift")
var studMarks = Student.Mark(98, 97, 95)

switch studDetails {
   case .Name(let studName):
      print("Student name is: \(studName).")
   case .Mark(let Mark1, let Mark2, let Mark3):
      print("Student Marks are: \(Mark1), \(Mark2), \(Mark3).")
}


// Enumeration
public enum Student {
   case Name(String)
   case Mark(Int, Int, Int)
}

var studDetails = Student.Name("Swift")
var studMarks = Student.Mark(98, 97, 95)

switch studDetails {
   case .Name(let studName):
      print("Student name is: \(studName).")
   case .Mark(let Mark1, let Mark2, let Mark3):
      print("Student Marks are: \(Mark1), \(Mark2), \(Mark3).")
}


// Public protocol
public protocol tcpprotocol {
   init(no1: Int)
}

// Public class
public class mainClass {
   var no1: Int
   
   // Initializer
   init(no1: Int) {
      self.no1 = no1
   }
}

// Class that uses protocol and class
class subClass: mainClass, tcpprotocol {
   var no2: Int
   init(no1: Int, no2 : Int) {
      self.no2 = no2
      super.init(no1:no1)
   }

   // Requires only one parameter for convenient method
   required override convenience init(no1: Int)  {
      self.init(no1:no1, no2:0)
   }
}

let obj1 = mainClass(no1: 20)
let obj2 = subClass(no1: 30, no2: 50)

print("res is: \(obj1.no1)")
print("res is: \(obj2.no1)")
print("res is: \(obj2.no2)")

//access control for generics.
public struct TOS<T> {
   var items = [T]()
    
   mutating func push(item: T) {
      items.append(item)
   }

   mutating func pop() -> T {
      return items.removeLast()
   }
}

var tos = TOS<String>()
tos.push(item: "Swift 4")
print(tos.items)

tos.push(item: "Generics")
print(tos.items)

tos.push(item: "Type Parameters")
print(tos.items)

tos.push(item: "Naming Type Parameters")
print(tos.items)
let deletedTos = tos.pop()
