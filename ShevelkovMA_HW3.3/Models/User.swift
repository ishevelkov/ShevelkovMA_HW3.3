//
//  User.swift
//  ShevelkovMA_HW3.3
//
//  Created by Михаил Шевельков on 20.07.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Login",
            password: "Password",
            person: Person.getPerson()
        )
        
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName : String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Misha", surname: "Shevelkov", image: "MyImage")
    }
}
