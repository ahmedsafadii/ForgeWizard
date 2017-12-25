//
//  SecondaryRunesBuildsTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON

class SecondaryRunesBuildsTableViewCell: UITableViewCell {

    var buildData:JSON!
    
    @IBOutlet weak var main_border: UIImageView!
    @IBOutlet weak var main_rune: UIImageView!
    @IBOutlet weak var main_title: UILabel!
    @IBOutlet weak var mainDescription: UILabel!
    
    
    @IBOutlet weak var main_v_view: UIView! //
    @IBOutlet var main_images: [UIImageView]!
    @IBOutlet var main_titles: [UILabel]!
    @IBOutlet var main_description: [UILabel]!
    @IBOutlet var why_description: [UILabel]!
    @IBOutlet var why_style: [UIButton]!
    
    func setupColor(){
        
        
        let color = getBuildRuneColor(runeId: buildData["rune_secondary"]["rune_id"].stringValue)
        
        main_v_view.backgroundColor = color
        main_title.textColor = color
        main_title.text = buildData["rune_secondary"]["rune_title"].stringValue
        mainDescription.text = buildData["rune_secondary"]["rune_description"].stringValue
        print("dasdadas",buildData["rune_secondary"]["rune_id"].stringValue)
        main_rune.image = UIImage(named: buildData["rune_secondary"]["rune_id"].stringValue)
        
        main_border.image = UIImage(named: buildData["rune_secondary"]["rune_title"].stringValue.lowercased() + "_border")
        
        for why in why_style {
            why.backgroundColor = color
        }
        
        for i in 0...main_titles.count - 1 {
            main_titles[i].textColor = color
            main_titles[i].text = buildData["secondary_data"][i]["build_keystone"]["stone_title"].stringValue
        }
        
        for i in 0...main_description.count - 1 {
            main_description[i].text = buildData["secondary_data"][i]["build_keystone"]["stone_long_description"].stringValue.htmlToString
        }
        
        for i in 0...main_images.count - 1 {
            main_images[i].borderColor = color
            main_images[i].image = UIImage(named:buildData["secondary_data"][i]["build_keystone"]["stone_id"].stringValue)
        }
        
        
        for i in 0...why_description.count - 1 {
            
            if(buildData["secondary_data"][i]["stone_why"].stringValue == "Why?" || buildData["secondary_data"][i]["stone_why"].stringValue == ""){
                why_description[i].text = "Owner didn't say why :("
            }
            else{
                why_description[i].text = buildData["secondary_data"][i]["stone_why"].stringValue.htmlToString
            }
            
        }
        
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buildData = Global.shared.SelectedBuild
        print(buildData)
        setupColor()
        
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
