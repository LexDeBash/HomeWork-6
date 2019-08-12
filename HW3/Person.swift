//
//  Person.swift
//  HW3
//
//  Created by Alexey Efimov on 17.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import Foundation

struct Person {
    
    var name: String
    var sureName: String
    var email: String
    var phoneNumber: String
    
    static func createPersons() -> [Person] {
        
        var persons: [Person] = []
        
        names.shuffle()
        surnames.shuffle()
        emails.shuffle()
        phones.shuffle()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                sureName: surnames[index],
                                email: emails[index],
                                phoneNumber: phones[index])
            
            persons.append(person)
        }
        
        return persons
    }
}
