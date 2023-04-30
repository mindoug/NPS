//
//  ParkCell.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import UIKit

class ParkCell: UICollectionViewCell {
    
    @IBOutlet weak var parkLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func update(with park: Park) {
        imageView.image = UIImage(named: "\(park.images[0].image)")
        parkLabel.text = "\(park.name) \(park.designation)"
        locationLabel.text = "\(park.addresses[0].city), \(park.addresses[0].state)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
