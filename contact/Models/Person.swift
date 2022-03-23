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

    static func getPerson(index: Int, dataManager: DataManager) -> Person {
        Person(
            name: dataManager.names[index],
            surname: dataManager.surname[index],
            phoneNumber: dataManager.telephone[index],
            email: dataManager.emails[index]
        )
    }

    static func getInfo(index: Int, dataManager: DataManager) -> String {
        "\(dataManager.names[index]) \(dataManager.surname[index])"
    }
}
