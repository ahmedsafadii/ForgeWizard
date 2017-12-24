//
//  HeaderBuildTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON

class HeaderBuildTableViewCell: UITableViewCell {

    var buildData:JSON!
    @IBOutlet weak var championImage: UIImageView!
    
    @IBOutlet weak var championTitle: UILabel!
    
    @IBOutlet weak var hideView: UIView!
    
    @IBOutlet weak var championDescription: UILabel!
    
    @IBOutlet weak var championPatch: UILabel!
    
    
    func setupDate(){
        championTitle.text = buildData["title"].stringValue
        championPatch.text = buildData["patch"]["title"].stringValue
        championDescription.text = buildData["description"].stringValue
        
        if(buildData["player"]["name"].stringValue == "Free"){
            hideView.isHidden = true
        }
        else{
            championImage.af_setImage(withURL: generateUrl(name: buildData["player"]["image"].stringValue, placeHolder: "grid-placeholder.png", type: "pro", extention: "png"), placeholderImage: UIImage(named:"grid-placeholder.png"))
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buildData = Global.shared.SelectedBuild
        setupDate()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
