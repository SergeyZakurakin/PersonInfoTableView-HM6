//
//  PersonDetailViewController.swift
//  TableView HM6
//
//  Created by Sergey Zakurakin on 27/02/2024.
//

import UIKit

class PersonDetailViewController: UIViewController {

    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    
    
    var personDetail: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = personDetail
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
