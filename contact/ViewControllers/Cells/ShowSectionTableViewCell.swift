//
//  ShowSectionTableViewCell.swift
//  Contact
//
//  Created by Sergey Runovich on 23.03.22.
//

import UIKit

class ShowSectionTableViewCell: UITableViewCell {

    @IBOutlet private weak var phoneLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!
    
    func configure(person: [Person], index: Int) {
        phoneLabel.text = person[index].phoneNumber
        emailLabel.text = person[index].email
    }
}
