//
//  SelectedRuneVideoTableViewCell.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit


protocol VideoPlayerButtonDelegate {
    func didPressButton(button:UIButton)
}


class SelectedRuneVideoTableViewCell: UITableViewCell {

    @IBOutlet weak var videoScreen: UIImageView!
    @IBOutlet weak var playVideo: UIButton!
    
    var delegate:VideoPlayerButtonDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func PlayVideo(_ sender: UIButton) {
        
        delegate?.didPressButton(button: playVideo)
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
