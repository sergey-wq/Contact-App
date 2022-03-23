//
//  DetailViewController.swift
//  Contact
//
//  Created by Sergey Runovich on 22.03.22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

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
