//
//  StatesViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 6/4/23.
//

import UIKit

protocol StatesViewDelegate: AnyObject {
    func stateChanged(state: State)
}

class StatesViewController: UIViewController {
    
    var states = State.loadStateData()
    var delegate: StatesViewDelegate?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension StatesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        states.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StateCell", for: indexPath) as! StatesCollectionViewCell
        
        let state = states[indexPath.row]
        cell.stateLabel.text = state.name
        return cell
    }
}

extension StatesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.stateChanged(state: states[indexPath.row])
        dismiss(animated: true, completion: nil)
    }
}

extension StatesViewController: UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // screen size minus margins / 2 to get 2 in each row
        let cellWidth = (UIScreen.main.bounds.width - 60)/2
        return CGSize(width: cellWidth, height: 26)
    }
}
