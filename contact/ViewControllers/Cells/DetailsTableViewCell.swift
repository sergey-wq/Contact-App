//
//  DetailsTableViewCell.swift
//  Contact
//
//  Created by Sergey Runovich on 22.03.22.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {

    @IBOutlet private weak var infoLabel: UILabel!

    func configure(person: [Person], index: Int) {
        infoLabel.text = person[index].fullName
    }
}
