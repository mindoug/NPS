//
//  DetailViewController.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    enum ImageType {
        case assetCatalog
        case downloaded
    }
    
    var imageType = ImageType.assetCatalog
    var park: Park!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
//        imageView.image = UIImage(named: park.image)
      
        titleLabel.text = park.name
        categoryLabel.text = park.designation
        locationLabel.text = park.state
        textView.text = park.description
        
        switch imageType {
        case .assetCatalog:
            imageView.image = UIImage(named: park.image)
        case .downloaded:
            imageView.image = UIImage(systemName: Constants.placeholderImage)
            
            if let imageURL = URL(string: park.image) {
                NetworkUtilities.downloadImage(from: imageURL) { image in
                    if let parkImage = image {
                        // always update the UI in the main thread
                        DispatchQueue.main.async {
                            self.imageView.image = parkImage
                        }
                    }
                }
            }
        }
    }
}
