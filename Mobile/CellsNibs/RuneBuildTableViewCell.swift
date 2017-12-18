//
//  RuneBuildTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class RuneBuildTableViewCell: UITableViewCell {

    @IBOutlet weak var runeBackground: UIImageView!
    @IBOutlet weak var lane: UILabel!
    @IBOutlet weak var runeTitle: UILabel!
    @IBOutlet weak var runeDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        runeTitle.sizeToFit()
        runeDescription.sizeToFit()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
