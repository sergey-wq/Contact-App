//
//  ViewController.swift
//  Contact
//
//  Created by Sergey Runovich on 22.03.22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let person = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        sendDataInShowSectionVC()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let index = sender as? Int else { return }

        detailVC.info = person[index].fullName
        detailVC.phone = person[index].phoneNumber
        detailVC.email = person[index].email
    }

    private func sendDataInShowSectionVC() {
        guard let tabBarController = tabBarController?.viewControllers else { return }
        for controller in tabBarController {
            if let showNavVC = controller as? UINavigationController {
                if let showSectionVС = showNavVC.topViewController as? ShowSectionViewController {
                    showSectionVС.person = person
                }
            }
        }
    }
}

extension MainViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(DetailsTableViewCell.self, for: indexPath)
        cell?.configure(person: person, index: indexPath.row)

        return cell ?? UITableViewCell()
    }
}

extension MainViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailScreen", sender: indexPath.row)
    }
}
