//
//  ChampionsBuildsListViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON

class ChampionsBuildsListViewController: UIViewController {
    
    @IBOutlet weak var ChampionsRunes: UITableView!
    var championData:JSON!
    
    @IBOutlet weak var championImage: UIImageView!
    @IBOutlet weak var championTitle: UILabel!
    
    
    func setupLayout(){
        championData = Global.shared.SelectedChampionBuild
        championTitle.text = championData["name"].stringValue
        championImage.af_setImage(withURL: generateUrl(name: championData["key"].stringValue, placeHolder: "grid-placeholder.png", type: "champions", extention: "jpg"), placeholderImage: UIImage(named:championData["key"].stringValue))

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ChampionsRunes.sectionHeaderHeight = 70
        setupLayout()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ChampionsBuildsListViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 43
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if(section == 0){
            let view = Bundle.main.loadNibNamed("VerifyTableViewCell", owner: self, options: nil)?.first as! VerifyTableViewCell
            view.vimage.image = UIImage(named:"Verify")
            view.vtitle.text = "Runeforge.gg"
            return view
            
        }
        else{
            let view = Bundle.main.loadNibNamed("VerifyTableViewCell", owner: self, options: nil)?.first as! VerifyTableViewCell
            view.vimage.image = UIImage(named:"Others")
            view.vtitle.text = "Forge Wizard"
            return view
            
        }

    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return championData["builds"].count
        }
        else{
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Global.shared.SelectedBuild = championData["builds"][indexPath.row]
        self.performSegue(withIdentifier: "showBuild", sender: self)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("RuneBuildTableViewCell", owner: self, options: nil)?.first as! RuneBuildTableViewCell
        
        if(championData["builds"][indexPath.row]["user"]["summoner_name"].stringValue == "Runeforge.gg"){
            
            if(championData["builds"][indexPath.row]["player"]["name"].stringValue == "Free"){
                cell.proName.isHidden = true
                cell.proSubtitle.isHidden = true
                cell.proPlayer.isHidden = true
                cell.hideView.isHidden = true
            }
            else{
                cell.proName.text = championData["builds"][indexPath.row]["player"]["name"].stringValue
                cell.proSubtitle.text = stringToDate(str: championData["builds"][indexPath.row]["updated_at"]["date"].stringValue)
                cell.proPlayer.af_setImage(withURL: generateUrl(name: championData["builds"][indexPath.row]["player"]["image"].stringValue, placeHolder: "grid-placeholder.png", type: "pro", extention: "png"), placeholderImage: UIImage(named:"grid-placeholder.png"))
            }
            cell.Dislike.text = "0"
            cell.Like.text = "1"
            cell.runeTitle.text = championData["builds"][indexPath.row]["title"].stringValue
            cell.runeDescription.text = championData["builds"][indexPath.row]["description"].stringValue
            cell.patch.text = championData["builds"][indexPath.row]["patch"]["patch"].stringValue
            cell.lane.text = championData["builds"][indexPath.row]["lane"]["name"].stringValue
            
            cell.laneImage.image = UIImage(named:championData["builds"][indexPath.row]["lane"]["image"].stringValue)

            cell.runeBackground.image = UIImage(named:getBuildRuneImage(runeId: championData["builds"][indexPath.row]["rune_main"]["rune_id"].stringValue))
            
            cell.main_rune.image = UIImage(named:championData["builds"][indexPath.row]["primary_data"][0]["build_keystone"]["stone_id"].stringValue)
            cell.second_rune.image = UIImage(named:championData["builds"][indexPath.row]["rune_secondary"]["rune_id"].stringValue)
        }
        else{
                // summoner build
            
        }
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
}
