//
//  SelectedRuneDescriptionTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class SelectedRuneDescriptionTableViewCell: UITableViewCell {

    
    @IBOutlet var viewColors: [UIView]!
    
    
    @IBOutlet weak var runeImage: UIImageView!
    
    @IBOutlet weak var runeName: UILabel!
    
    @IBOutlet weak var runeDescription: UILabel!
        
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
