//
//  DetailViewController.swift
//  Contact
//
//  Created by Sergey Runovich on 22.03.22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet private weak var infoLabel: UILabel!
    @IBOutlet private weak var phoneLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!

    var info = ""
    var phone = ""
    var email = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = info
        phoneLabel.text = "Phone: \(phone)"
        emailLabel.text = "Email: \(email)"
    }
}
