//
//  ShowSectionViewController.swift
//  Contact
//
//  Created by Sergey Runovich on 23.03.22.
//

import UIKit

class ShowSectionViewController: UIViewController {

    var person: [Person] = []
}

extension ShowSectionViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(ShowSectionTableViewCell.self, for: indexPath)
        cell?.configure(person: person, index: indexPath.section)
        return cell ?? UITableViewCell()
    }
}


extension ShowSectionViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130.0
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }
}
