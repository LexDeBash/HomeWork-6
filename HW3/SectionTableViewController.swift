//
//  SectionTableViewControllerswift
//  HW3
//
//  Created by Alexey Efimov on 17.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    var persons = Person.createPersons()
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    //Использование метода для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        
        return person.name + " " + person.sureName
    }
    
    
    /*
     // Использование метода для кастомизации секции с использованием кастомного класса
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
     
     let person = persons[section]
     headerCell.personLabel.text = person.name + " " + person.sureName
     
     return headerCell
     
     }
     */
    
    /*
    // Использование метода для кастомизации секции без использования кастомного класса
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let person = persons[section]
        
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.text = person.name + " " + person.sureName
        label.textColor = .white
        //        label.textAlignment = .center
        //        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        return label
    }
    */
    
    /*
     // Использование метода для кастомизации секции без использования кастомного класса
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     
     let person = persons[section]
     
     let myView = UIView()
     myView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
     
     let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
     label.text = person.name + " " + person.sureName
     label.textColor = .white
     
     myView.addSubview(label)
     return myView
     }
     */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        
        return cell
    }
}
