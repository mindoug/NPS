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
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func update(park: String, designation: String, location: String, image: String?) {
        parkLabel.text = park
        designationLabel.text = designation
        locationLabel.text = location
        if let image = image {
            imageView.image = UIImage(named: image)
        } else {
            imageView.image = UIImage(systemName: Constants.placeholderImage)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
