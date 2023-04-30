//
//  ViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    var parks = [Park]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        parks = Park.loadParkData()
        self.collectionView.register(UINib(nibName: "ParkCell", bundle: nil), forCellWithReuseIdentifier: "ParkCell")
       
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        parks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkCell", for: indexPath) as! ParkCell
        
        let parks = parks[indexPath.row]
        cell.update(with: parks)
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
