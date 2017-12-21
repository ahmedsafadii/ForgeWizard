//
//  JoinTheForgeTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import AAPickerView

class JoinTheForgeTableViewCell: UITableViewCell {

    @IBOutlet weak var summonerRegion: AAPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let regions = ["EUW","EUNE"]
        summonerRegion.pickerType = .StringPicker
        summonerRegion.stringPickerData = regions
        summonerRegion.stringDidChange = { index in
            print("selectedString ", regions[index])
        }
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
