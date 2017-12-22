//
//  SelectedPatchViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON

class SelectedPatchViewController: UIViewController {

    @IBOutlet weak var PatchTableView: UITableView!

    
    var patch:JSON!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        patch = Global.shared.SelectedPatch
        print(patch)
        PatchTableView.estimatedRowHeight = 85.0
        PatchTableView.rowHeight = UITableViewAutomaticDimension
        PatchTableView.tableFooterView = UIView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension SelectedPatchViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 1
        }
        else{
            return patch["notes"].count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0){
            let cell = Bundle.main.loadNibNamed("GetHeaderPatchTableViewCell", owner: self, options: nil)?.first as! GetHeaderPatchTableViewCell
            cell.patchTitle.text = patch["title"].stringValue
            cell.patchDescription.text = patch["description"].stringValue.htmlToString
            cell.patchTime.text = patch["patch_date"].stringValue
            cell.moreButton.isHidden = true
            cell.bottomConstraint.constant = 0
            return cell
            
        }
        else{
            let cell = Bundle.main.loadNibNamed("NoteChangeTableViewCell", owner: self, options: nil)?.first as! NoteChangeTableViewCell
            cell.runeName.text = patch["notes"][indexPath.row]["title"].stringValue.capitalized
            cell.runeImage.image = UIImage(named:patch["notes"][indexPath.row]["rune_id"].stringValue)
            cell.runeDescription.text = patch["notes"][indexPath.row]["description"].stringValue
            
            if(Global.shared.RunesColors[0].contains(patch["notes"][indexPath.row]["rune_id"].stringValue)){
                cell.runeName.textColor = UIColor("#D29B58")
                cell.runeView.borderColor = UIColor("#D29B58")
            }
            else if(Global.shared.RunesColors[1].contains(patch["notes"][indexPath.row]["rune_id"].stringValue)){
                cell.runeName.textColor = UIColor("#CA5D69")
                cell.runeView.borderColor = UIColor("#CA5D69")
            }
            else if(Global.shared.RunesColors[2].contains(patch["notes"][indexPath.row]["rune_id"].stringValue)){
                cell.runeName.textColor = UIColor("#9E6DF6")
                cell.runeView.borderColor = UIColor("#9E6DF6")
            }
            else if(Global.shared.RunesColors[3].contains(patch["notes"][indexPath.row]["rune_id"].stringValue)){
                cell.runeName.textColor = UIColor("#52A64B")
                cell.runeView.borderColor = UIColor("#52A64B")
            }
            else if(Global.shared.RunesColors[4].contains(patch["notes"][indexPath.row]["rune_id"].stringValue)){
                cell.runeName.textColor = UIColor("#689EB0")
                cell.runeView.borderColor = UIColor("#689EB0")
            }
            
            if(patch["notes"][indexPath.row]["type"].stringValue == "buff"){
                cell.type.tintColor = UIColor.green
                cell.type.setImage(UIImage(named:"buff"), for: .normal)
            }
            else{
                cell.type.tintColor = UIColor.red
                cell.type.setImage(UIImage(named:"nerf"), for: .normal)
            }
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
}
