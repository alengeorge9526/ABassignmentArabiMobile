//
//  TableViewCell.swift
//  ABassignment
//
//  Created by Alen George on 13/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        baseView.layer.cornerRadius = 20
        baseView.layer.borderWidth = 1
        baseView.layer.borderColor = UIColor.lightGray.cgColor
        textlabel.text = strings.Egypt.localized
        textlabel.text = strings.Jordan.localized
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
            accessoryType = .checkmark
        } else {
            accessoryType = .none
        }
    }
}


