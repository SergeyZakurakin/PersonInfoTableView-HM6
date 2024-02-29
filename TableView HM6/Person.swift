//
//  Person.swift
//  TableView HM6
//
//  Created by Sergey Zakurakin on 29/02/2024.
//

import Foundation


struct Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    
    static func createPersons() -> [Person] {
        
        
        var persons: [Person] = []
        
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surmane.shuffled()
        let phones = DataManager.shared.phone.shuffled()
        let emails = DataManager.shared.email.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            persons.append(person)
        }
        
        return persons
    }
}
