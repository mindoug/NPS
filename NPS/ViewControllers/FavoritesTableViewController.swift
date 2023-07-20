//
//  FavoritesTableViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import UIKit

class FavoritesTableViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    // need to reload data when view appears to update rows to reflect changes from parks tab
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    private func initialize() {
        self.tableView.register(UINib(nibName: "ParkTableViewCell", bundle: nil), forCellReuseIdentifier: "ParkTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataManager.shared.favorites.count
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParkTableViewCell") as! ParkTableViewCell
        
        let park = DataManager.shared.favorites[indexPath.row]
        cell.update(park: park.name, designation: park.designation, parkImage: park.image, location: park.state)
        cell.favoriteButton.isHidden = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // delete item from array
            DataManager.shared.favorites.remove(at: indexPath.row)
            // delete row from table view
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

 
