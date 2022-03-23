//
//  Person.swift
//  Contact
//
//  Created by Sergey Runovich on 22.03.22.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPerson() -> [Person] {
        var persons: [Person] = []

        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surname.shuffled()
        let phoneNumbers = DataManager.shared.telephone.shuffled()
        let emails = DataManager.shared.emails.shuffled()

        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }

        return persons
    }
}
