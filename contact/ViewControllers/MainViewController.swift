//
//  ViewController.swift
//  Contact
//
//  Created by Sergey Runovich on 22.03.22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let dataManager = DataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        sendDataInShowSectionVC()
    }

    func sendDataInShowSectionVC() {
        guard let tabBarController = tabBarController?.viewControllers else { return }
        for controller in tabBarController {
            if let showNavVC = controller as? UINavigationController {
                if let showSectionVС = showNavVC.topViewController as? ShowSectionViewController {
                    showSectionVС.dataManager = dataManager
                }
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let index = sender as? Int else { return }

        let person = Person.getPerson(index: index, dataManager: dataManager)
        detailVC.info = person.fullName
        detailVC.phone = person.phoneNumber
        detailVC.email = person.email
    }
}

extension MainViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataManager.names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(DetailsTableViewCell.self, for: indexPath)
        cell?.configure(person: Person.getPerson(index: indexPath.row, dataManager: dataManager))

        return cell ?? UITableViewCell()
    }
}

extension MainViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailScreen", sender: indexPath.row)
    }
}
