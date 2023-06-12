//
//  ListTableViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // adds the edit functionality
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.items.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItemCell", for: indexPath) as! ListItemCell

        let item = DataManager.shared.items[indexPath.row]
        cell.titleLabel?.text = item.title
        cell.isCheckedButton.isSelected = item.isChecked
        cell.delegate = self
        return cell
    }
  
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
  

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // remove from the array, then from the table view
            DataManager.shared.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
  
    @IBAction func unwindToItemList(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind" else {
            return
        }
        
        let sourceViewController = segue.source as! ListDetailTableViewController
        if let listItem = sourceViewController.listItem {
            // calculate index path prior to appending record
            let newIndexPath = IndexPath(row: DataManager.shared.items.count, section: 0)
            DataManager.shared.items.append(listItem)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    
}

extension ListTableViewController: ListItemCellDelegate {
    func checkMarkTapped(sender: ListItemCell) {
        if let indexPath = tableView.indexPath(for: sender) {
            var listItem = DataManager.shared.items[indexPath.row]
            listItem.isChecked.toggle()
            DataManager.shared.items[indexPath.row] = listItem
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    
    
}
