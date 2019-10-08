//
//  DetailViewController.swift
//  HW3
//
//  Created by Alexey Efimov on 17.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var person: Person!

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }

}
