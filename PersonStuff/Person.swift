//
//  Person.swift
//  PersonStuff
//
//  Created by Jim Campagno on 1/31/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class Person {
    
    let firstName: String
    let lastName: String
    var happiness: Int = 0
    
    var fullName: String {
        return String(format:"%@ %@", self.firstName, self.lastName)
    }
    
    required init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func greet(person: Person) -> String {
        happiness+=2
        person.happiness+=2
        return String(format: "Hello %@.",person.fullName)
    }
    
    func dance(with person: Person) -> String{
        happiness+=5
        person.happiness+=5
        return String(format:"💃🏼%@❤️ ❤️%@💃🏼",self.fullName, person.fullName)
    }
}
