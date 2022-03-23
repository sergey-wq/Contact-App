//
//  ShowSectionTableViewCell.swift
//  Contact
//
//  Created by Sergey Runovich on 23.03.22.
//

import UIKit

class ShowSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    func configure(person: Person) {
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
