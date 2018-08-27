import Foundation

var myInt = 2
myInt = 3
print(myInt)
print(type(of: myInt))

var myDouble: Double = 2
print(type(of: myDouble))
myDouble = 3

var myBool: Bool = true
print(myBool)

var myText = "Mon texte"
myText = "Autre \(myInt)"
print(myText)

var myDate: Date = Date()
print(myDate)


func hello(_ name1: String, _ name2: String, _ age: Int) -> String {
    return "Hello \(name1) \(name2) \(age)"
}

print(hello("John", "Other", 12))

var myArray: [Double] = [1, 2, 3]
print(type(of: myArray))
print(myArray)
myArray[0] = 5
myArray.append(4)
print(myArray)

for item in myArray.sorted() {
    print(item)
}

var myDict: [String: Int] = ["key1": 1, "key2": 2]
print(type(of: myDict))
myDict["key3"] = 3
myDict["key3"] = nil
myDict.removeValue(forKey: "key2")
print(myDict)

for (key, _) in myDict {
    print("key: \(key), value: \(myDict[key]!)")
}

class Person: CustomStringConvertible {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "name: \(name), age: \(age)"
    }
}

var person = Person(name: "John", age: 20)
person.name = "Claire"
print(person)

class User: Person {
    var email: String
    
    init(name: String, age: Int, email: String) {
        self.email = email
        super.init(name: name, age: age)
    }
    
    func hello() {
        print("Hello de \(name)")
    }
    
    override var description: String {
        return super.description + ", email: " + email
    }
}

var user = User(name: "Claire", age: 20, email: "claire@acme.com")
print(user)
user.hello()


func myOptionalString() -> String? {
    let flipCoin = Int(arc4random_uniform(2))
    if flipCoin == 0 {
        return "Du Texte"
    } else {
        return nil
    }
}

if let value = myOptionalString() {
    print(value)
} else {
    print("Le résultat est nil")
}

func unwrapp() {
    guard let value = myOptionalString() else {
        print("C'est nil")
        return
    }
    print(value)
}
unwrapp()



