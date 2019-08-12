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
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
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
