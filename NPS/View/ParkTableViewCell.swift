//
//  ParkTableViewCell.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import UIKit

protocol FavoriteSelectable: AnyObject {
    func selectFavorite(cell: UITableViewCell, selected: Bool)
}

class ParkTableViewCell: UITableViewCell {
    
    weak var delegate: FavoriteSelectable?
    
    @IBOutlet weak var parkLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var parkImageView: UIImageView!
    
    
    func update(park: String, designation: String, parkImage: String, location: String) {
        parkLabel.text = park
        designationLabel.text = designation
        parkImageView.image = UIImage(named: parkImage)
        locationLabel.text = location
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func favoriteSelected(_ sender: UIButton) {
        sender.isSelected.toggle()
        // whoever the delegate is can handle this event
        delegate?.selectFavorite(cell: self, selected: sender.isSelected)
    }
}

