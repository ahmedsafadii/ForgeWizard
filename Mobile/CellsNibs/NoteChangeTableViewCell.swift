//
//  NoteChangeTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class NoteChangeTableViewCell: UITableViewCell {

    @IBOutlet weak var type: UIButton!
    
    @IBOutlet weak var runeName: UILabel!
    
    @IBOutlet weak var runeImage: UIImageView!
    
    @IBOutlet weak var runeDescription: UILabel!

    @IBOutlet weak var runeView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
