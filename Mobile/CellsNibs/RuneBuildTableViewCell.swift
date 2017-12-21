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
    @IBOutlet weak var proPlayer: UIImageView!
    @IBOutlet weak var proSubtitle: UILabel!
    @IBOutlet weak var patch: UILabel!
    @IBOutlet weak var laneImage: UIImageView!
    @IBOutlet weak var Like: UILabel!
    @IBOutlet weak var Dislike: UILabel!
    @IBOutlet weak var hideView: UIView!
    
    @IBOutlet weak var main_rune: UIImageView!
    @IBOutlet weak var second_rune: UIImageView!
    
    @IBOutlet weak var proName: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var dislikeButton: UIButton!
    
    // future feature
    
    func hideLikeDislike(){
        Like.isHidden = true
        Dislike.isHidden = true
        likeButton.isHidden = true
        dislikeButton.isHidden = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        runeTitle.sizeToFit()
        runeDescription.sizeToFit()
        hideLikeDislike()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
