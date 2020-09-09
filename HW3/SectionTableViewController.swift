//
//  SectionTableViewControllerswift
//  HW3
//
//  Created by Alexey Efimov on 17.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    //Использование метода для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    
    /*
    // Использование метода для кастомизации секции с использованием кастомного класса
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
        
        headerCell.personLabel.text = persons[section].fullName
        
        return headerCell
        
    }
    
    */
    /*
    // Использование метода для кастомизации секции без использования кастомного класса
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
                
        let label = UILabel()
        label.text = persons[section].fullName
        label.textColor = .white
        //        label.textAlignment = .center
        //        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        return label
    }
    */
    
    /*
    // Использование метода для кастомизации секции без использования кастомного класса
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = persons[section].fullName
        label.textColor = .white
        
        headerView.addSubview(label)
        return headerView
    }
    */
    
    /*
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .gray
    }
    */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phoneNumber
            cell.imageView?.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: Contacts.email.rawValue)
        }
                
        return cell
    }
}
