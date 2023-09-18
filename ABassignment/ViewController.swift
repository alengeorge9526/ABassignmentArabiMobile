//
//  ViewController.swift
//  ABassignment
//
//  Created by Alen George on 13/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var changeCountryButton: UIButton!
    
    var updatedTextData:String?
    var updatedImageData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        self.countryLabel.text = strings.Country.localized
        self.changeCountryButton.titleLabel?.text = strings.ChangeCountry.localized
        if let recivedTextData = updatedTextData {
            countryLabel.text = recivedTextData
        }
        if let recivedImageData = updatedImageData {
            imageView.image = UIImage(named: recivedImageData)
        }
        tabBarController?.tabBar.layer.cornerRadius = 14
    }
}
