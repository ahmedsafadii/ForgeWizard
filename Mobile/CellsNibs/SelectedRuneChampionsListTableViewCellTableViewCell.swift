//
//  SelectedRuneChampionsListTableViewCellTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class SelectedRuneChampionsListTableViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var championImage: UIImageView!
    
    @IBOutlet weak var chmpionName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
