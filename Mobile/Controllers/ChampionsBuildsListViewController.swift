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
    
    @IBOutlet var noRunes: UIView!
    
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
        
        if(championData["validBuild"].count != 0 || championData["usersBuild"].count != 0 ){
            print("data here")
            if(championData["validBuild"].count != 0 && championData["usersBuild"].count != 0){
                return 2
            }
            else if(championData["validBuild"].count == 0 && championData["usersBuild"].count != 0){
                return 1
            }
            else{
                return 1
            }
        }
        else{
            print("no data")
            self.ChampionsRunes.backgroundView = noRunes
            return 0
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 43
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if(championData["validBuild"].count != 0 && championData["usersBuild"].count != 0){
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
        else if(championData["validBuild"].count == 0 && championData["usersBuild"].count != 0){
            
            let view = Bundle.main.loadNibNamed("VerifyTableViewCell", owner: self, options: nil)?.first as! VerifyTableViewCell
            view.vimage.image = UIImage(named:"Others")
            view.vtitle.text = "Forge Wizard"
            return view
            
        }
        else{
            let view = Bundle.main.loadNibNamed("VerifyTableViewCell", owner: self, options: nil)?.first as! VerifyTableViewCell
            view.vimage.image = UIImage(named:"Verify")
            view.vtitle.text = "Runeforge.gg"
            return view
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(championData["validBuild"].count != 0 && championData["usersBuild"].count != 0){
            if(section == 0){
                return championData["validBuild"].count
            }
            else{
                return championData["usersBuild"].count
            }
        }
        else if(championData["validBuild"].count == 0 && championData["usersBuild"].count != 0){
            return championData["usersBuild"].count
            
        }
        else{
            return championData["validBuild"].count
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if(championData["validBuild"].count != 0 && championData["usersBuild"].count != 0){
            if(indexPath.section == 0){
                Global.shared.SelectedBuild = championData["validBuild"][indexPath.row]
            }
            else{
                Global.shared.SelectedBuild = championData["usersBuild"][indexPath.row]
            }
        }
        else if(championData["validBuild"].count == 0 && championData["usersBuild"].count != 0){
            Global.shared.SelectedBuild = championData["usersBuild"][indexPath.row]
        }
        else{
            Global.shared.SelectedBuild = championData["validBuild"][indexPath.row]
        }
        
        self.performSegue(withIdentifier: "showBuild", sender: self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("RuneBuildTableViewCell", owner: self, options: nil)?.first as! RuneBuildTableViewCell
        
        if(championData["validBuild"].count != 0 && championData["usersBuild"].count != 0){
            if(indexPath.section == 0){
                cell.proName.text = "Runeforge.gg"
                
                cell.proSubtitle.text = championData["validBuild"][indexPath.row]["updated_at"].stringValue
                
                cell.proPlayer.af_setImage(withURL: generateUrl(name: championData["validBuild"][indexPath.row]["player"]["image"].stringValue, placeHolder: "grid-placeholder.png", type: "pro", extention: "png"), placeholderImage: UIImage(named:"grid-placeholder.png"))
                cell.Dislike.text = "0"
                cell.Like.text = "1"
                cell.runeTitle.text = championData["validBuild"][indexPath.row]["title"].stringValue
                cell.runeDescription.text = championData["validBuild"][indexPath.row]["description"].stringValue
                cell.patch.text = championData["validBuild"][indexPath.row]["patch"]["patch"].stringValue
                cell.lane.text = championData["validBuild"][indexPath.row]["lane"]["name"].stringValue
                
                cell.laneImage.image = UIImage(named:championData["validBuild"][indexPath.row]["lane"]["image"].stringValue)
                
                cell.runeBackground.image = UIImage(named:getBuildRuneImage(runeId: championData["validBuild"][indexPath.row]["rune_main"]["rune_id"].stringValue))
                
                cell.main_rune.image = UIImage(named:championData["validBuild"][indexPath.row]["primary_data"][0]["build_keystone"]["stone_id"].stringValue)
                cell.second_rune.image = UIImage(named:championData["validBuild"][indexPath.row]["rune_secondary"]["rune_id"].stringValue)
                
                
            }
            else{
                cell.proName.text = championData["usersBuild"][indexPath.row]["user"]["summoner_name"].stringValue + " - " + Global.shared.regionsData[championData["usersBuild"][indexPath.row]["user"]["summoner_region"].stringValue]["name"].stringValue
                cell.proSubtitle.text = championData["usersBuild"][indexPath.row]["updated_at"].stringValue
                cell.proPlayer.af_setImage(withURL: URL(string:"http://ddragon.leagueoflegends.com/cdn/" + championData["usersBuild"][indexPath.row]["user"]["summoner_profile_icon"].stringValue)!, placeholderImage: UIImage(named:"grid-placeholder.png"))
                cell.Dislike.text = "0"
                cell.Like.text = "1"
                cell.runeTitle.text = championData["usersBuild"][indexPath.row]["title"].stringValue
                cell.runeDescription.text = championData["usersBuild"][indexPath.row]["description"].stringValue
                cell.patch.text = championData["usersBuild"][indexPath.row]["patch"]["patch"].stringValue
                cell.lane.text = championData["usersBuild"][indexPath.row]["lane"]["name"].stringValue
                
                cell.laneImage.image = UIImage(named:championData["usersBuild"][indexPath.row]["lane"]["image"].stringValue)
                
                cell.runeBackground.image = UIImage(named:getBuildRuneImage(runeId: championData["usersBuild"][indexPath.row]["rune_main"]["rune_id"].stringValue))
                
                cell.main_rune.image = UIImage(named:championData["usersBuild"][indexPath.row]["primary_data"][0]["build_keystone"]["stone_id"].stringValue)
                cell.second_rune.image = UIImage(named:championData["usersBuild"][indexPath.row]["rune_secondary"]["rune_id"].stringValue)
                
            }
        }
        else if(championData["validBuild"].count == 0 && championData["usersBuild"].count != 0){
            
            cell.proName.text = championData["usersBuild"][indexPath.row]["user"]["summoner_name"].stringValue + " - " + Global.shared.regionsData[championData["usersBuild"][indexPath.row]["user"]["summoner_region"].stringValue]["name"].stringValue
            cell.proSubtitle.text = championData["usersBuild"][indexPath.row]["updated_at"].stringValue
            cell.proPlayer.af_setImage(withURL: URL(string:"http://ddragon.leagueoflegends.com/cdn/" + championData["usersBuild"][indexPath.row]["user"]["summoner_profile_icon"].stringValue)!, placeholderImage: UIImage(named:"grid-placeholder.png"))
            cell.Dislike.text = "0"
            cell.Like.text = "1"
            cell.runeTitle.text = championData["usersBuild"][indexPath.row]["title"].stringValue
            cell.runeDescription.text = championData["usersBuild"][indexPath.row]["description"].stringValue
            cell.patch.text = championData["usersBuild"][indexPath.row]["patch"]["patch"].stringValue
            cell.lane.text = championData["usersBuild"][indexPath.row]["lane"]["name"].stringValue
            
            cell.laneImage.image = UIImage(named:championData["usersBuild"][indexPath.row]["lane"]["image"].stringValue)
            
            cell.runeBackground.image = UIImage(named:getBuildRuneImage(runeId: championData["usersBuild"][indexPath.row]["rune_main"]["rune_id"].stringValue))
            
            cell.main_rune.image = UIImage(named:championData["usersBuild"][indexPath.row]["primary_data"][0]["build_keystone"]["stone_id"].stringValue)
            cell.second_rune.image = UIImage(named:championData["usersBuild"][indexPath.row]["rune_secondary"]["rune_id"].stringValue)
        }
        else{
            cell.proName.text = "Runeforge.gg"
            
            cell.proSubtitle.text = championData["validBuild"][indexPath.row]["updated_at"].stringValue
            
            cell.proPlayer.af_setImage(withURL: generateUrl(name: championData["validBuild"][indexPath.row]["player"]["image"].stringValue, placeHolder: "grid-placeholder.png", type: "pro", extention: "png"), placeholderImage: UIImage(named:"grid-placeholder.png"))
            cell.Dislike.text = "0"
            cell.Like.text = "1"
            cell.runeTitle.text = championData["validBuild"][indexPath.row]["title"].stringValue
            cell.runeDescription.text = championData["validBuild"][indexPath.row]["description"].stringValue
            cell.patch.text = championData["validBuild"][indexPath.row]["patch"]["patch"].stringValue
            cell.lane.text = championData["validBuild"][indexPath.row]["lane"]["name"].stringValue
            
            cell.laneImage.image = UIImage(named:championData["validBuild"][indexPath.row]["lane"]["image"].stringValue)
            
            cell.runeBackground.image = UIImage(named:getBuildRuneImage(runeId: championData["validBuild"][indexPath.row]["rune_main"]["rune_id"].stringValue))
            
            cell.main_rune.image = UIImage(named:championData["validBuild"][indexPath.row]["primary_data"][0]["build_keystone"]["stone_id"].stringValue)
            cell.second_rune.image = UIImage(named:championData["validBuild"][indexPath.row]["rune_secondary"]["rune_id"].stringValue)
            
            
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
}
