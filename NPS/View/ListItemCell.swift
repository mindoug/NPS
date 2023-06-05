//
//  ListItemCell.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import UIKit

protocol ListItemCellDelegate: AnyObject {
    func checkMarkTapped(sender: ListItemCell)
}

class ListItemCell: UITableViewCell {
    
    weak var delegate: ListItemCellDelegate?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isCheckedButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        delegate?.checkMarkTapped(sender: self)
    }
    
}
