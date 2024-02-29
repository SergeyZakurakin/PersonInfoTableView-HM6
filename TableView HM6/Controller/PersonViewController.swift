//
//  PersonViewController.swift
//  TableView HM6
//
//  Created by Sergey Zakurakin on 27/02/2024.
//

import UIKit

class PersonViewController: UITableViewController {

    
    let persons = Person.createPersons()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surname

        return cell
    }



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let personDetailVC = segue.destination as! PersonDetailViewController
            let selectedPerson = persons[indexPath.row]
            personDetailVC.personDetail = selectedPerson
        }

    }

}
