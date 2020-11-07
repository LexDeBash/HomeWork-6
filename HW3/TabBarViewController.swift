//
//  TabBarViewController.swift
//  HW3
//
//  Created by Alexey Efimov on 18.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons) 
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
