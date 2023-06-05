//
//  ParksViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import UIKit

class ParksViewController: UIViewController {
    
    let parks = Park.loadParkData()
    
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    // need to reload data when view appears to update heart button to reflect changes from favorites tab
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    private func initialize() {
        self.tableView.register(UINib(nibName: "ParkTableViewCell", bundle: nil), forCellReuseIdentifier: "ParkTableViewCell")
        self.collectionView.register(UINib(nibName: "ParkCell", bundle: nil), forCellWithReuseIdentifier: "ParkCell")
    }
    
    @IBAction func toggleView(_ sender: UIBarButtonItem) {
        self.collectionView.isHidden.toggle()
        self.tableView.isHidden.toggle()
        sender.isSelected.toggle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            DetailViewController,
           let sender = sender as? Park {
            destination.park = sender
        }
    }
}

extension ParksViewController: FavoriteSelectable {
    func selectFavorite(cell: UITableViewCell, selected: Bool) {
        // provides indexPath
        let indexPath = tableView.indexPath(for: cell)
        // get park at indexPath
        if let index = indexPath {
            let park = parks[index.row]
            // was it favorited? Add to data model.
            if selected {
                DataModel.shared.favorites.append(park)
            } else {
                // remove the park from favorites array that matches the park at parks[index.row]
                // removeAll function takes in a closure compares each element to the park to see if its equal. Equatable protocol required.
                DataModel.shared.favorites.removeAll(where: {$0 == park})
            }
        }
    }
}

extension ParksViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let park = parks[indexPath.row]
        performSegue(withIdentifier: "ParkSegue", sender: park)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ParksViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        parks.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParkTableViewCell") as! ParkTableViewCell
        
        let park = parks[indexPath.row]
        cell.update(park: park.name, designation: park.designation, parkImage: park.image, location: park.state)
        
        // contains method used to check to see if the park is favorited
        // Equatable required
        if DataModel.shared.favorites.contains(park) {
            cell.favoriteButton.isSelected = true
        } else {
            cell.favoriteButton.isSelected = false
        }
        
        cell.delegate = self
        
        return cell
    }
}

extension ParksViewController: UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        parks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkCell", for: indexPath) as! ParkCell
        
        let park = parks[indexPath.row]
        cell.update(park: park.name, designation: park.designation, location: park.state, image: park.image)
       
        return cell
    }
}

extension ParksViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let park = parks[indexPath.row]
        performSegue(withIdentifier: "ParkSegue", sender: park)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension ParksViewController: UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // screen size minus margins / 2 to get 2 in each row
        let cellWidth = (UIScreen.main.bounds.width - 30)/2
        return CGSize(width: cellWidth, height: cellWidth)
    }
}
