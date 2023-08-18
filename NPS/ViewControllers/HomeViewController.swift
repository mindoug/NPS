//
//  ViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var parks = [Park]()
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        self.collectionView.register(UINib(nibName: "ParkCell", bundle: nil), forCellWithReuseIdentifier: "ParkCell")
        loadData(state: "AL")
    }
    
    
    
    func loadData(state: String) {
        NPSModelController.getParksByState(state: state) { (result) in
            switch result {
            case .success(let returnParks):
                // take data from returnParks and map to a new Park item
                self.parks = returnParks.map({Park(
                    name: $0.name,
                    designation: $0.designation,
                    description: $0.description,
                    // if no images return empty string
                    image: $0.images.count > 0 ? $0.images[0].image : "",
                    state: $0.state) })
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
                
            }
        }
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        parks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkCell", for: indexPath) as! ParkCell
        
        let park = parks[indexPath.row]
        cell.update(park: park.name, designation: park.designation, location: park.state, image: nil)
        
        // it's possible the park array is empty but not nil

        if !park.image.isEmpty {
            if let imageURL = URL(string: park.image) {
                NetworkUtilities.downloadImage(from: imageURL) {
                    image in
                    if let parkImage = image {
                        // always update the UI from the main thread
                        DispatchQueue.main.async {
                            cell.imageView.image = parkImage
                        }
                    }
                }
            }
        }
        
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let park = parks[indexPath.item]
        
        performSegue(withIdentifier: "detailSegue", sender: park)
        
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "detailSegue":
            if let destination = segue.destination as?
                DetailViewController,
               let sender = sender as? Park {
                destination.park = sender
                destination.imageType = .downloaded
            }
        case "statesSegue":
            if let destination = segue.destination as? StatesViewController {
                destination.delegate = self
            }
              
        default: return
        }
    }
}

extension HomeViewController: StatesViewDelegate {
    func stateChanged(state: State) {
        // what happens when the state changes
        stateLabel.text = state.name
        // retrieve parks from api for state selected
        loadData(state: state.abbreviation)
    }
}
