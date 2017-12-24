//
//  JoinTheForgeTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import AAPickerView

@objc protocol buttonDidClickedDelegate {
    
    @objc optional func buttonClicked(summonerName:String,code:String,sumonerRegion:Int)
    
    @objc optional func removeBuild(buildId:Int)
}


class JoinTheForgeTableViewCell: UITableViewCell {

    var delegate: buttonDidClickedDelegate?
    
    
    @IBOutlet weak var summonerRegion: AAPickerView!
    
    @IBOutlet weak var summonerName: UITextField!
    
    @IBOutlet weak var summonerCode: UITextField!
    
    var regionIndex = -1
    
    @IBAction func register(_ sender: UIButton) {
        self.delegate?.buttonClicked!(summonerName: summonerName.text ?? "", code: summonerCode.text ?? "", sumonerRegion: regionIndex)

    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
        let servers = ["Brazil","Europe Nordic & East","Europe West","Latin America North","Latin America South","North America","Oceania","Russia","Turkey","Japan"]
        
        summonerRegion.pickerType = .StringPicker
        summonerRegion.stringPickerData = servers
        summonerRegion.stringDidChange = { index in
            self.regionIndex = index
        }
        
        summonerCode.text = randomString(length: 4)
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
