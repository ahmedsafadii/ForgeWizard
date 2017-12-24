//
//  ForgeRunesViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftSpinner
import SwiftyJSON

class ForgeRunesViewController: UIViewController,buttonDidClickedDelegate {
    

    func removeBuild(buildId: Int) {
        SwiftSpinner.show("Remove in progress")
        print(Global.shared.summonerData["summoner"]["id"].intValue)
        print(buildId)
        APIManager.instance.removeBuild(userId: Global.shared.summonerData["summoner"]["id"].intValue, buildId: buildId, onSuccess: { json in
            self.checkLoginView()
        }, onFailure: { error in
            SwiftSpinner.hide()
            self.showAlert(title: "", message: error.localizedDescription, ok: "Ok")
        })
    }
    
    @IBOutlet var errorView: UIView!
    @IBOutlet weak var errorMessage: UILabel!
    
    
    @IBAction func updateMyRunes(_ sender: UIBarButtonItem) {
        
        checkLoginView()
        
    }
    @IBAction func addNewRunes(_ sender: UIBarButtonItem) {
        SwiftSpinner.show("Fetching the tools ...")
        APIManager.instance.getAddBuildTools(onSuccess: { json in
            SwiftSpinner.hide()
            Global.shared.Tools = json
            self.performSegue(withIdentifier: "addBuild", sender: self)
        }, onFailure: { error in
            SwiftSpinner.hide()
            self.showAlert(title: "", message: error.localizedDescription, ok: "Ok")
        })
    }
    
    
    
    @IBAction func logOut(_ sender: UIBarButtonItem) {
        SwiftSpinner.show(duration: 1.0, title: "Logging out")
        UserDefaultsData().removeObject(key: "summonerData")
        checkLoginView()
        SummonerTableView.reloadData()
    }
    
    
    var isLogin = true
    
    var builds:JSON!
    
    
    func checkLoginView(){
        if(UserDefaultsData().checkObject(key: "summonerData")){
            Global.shared.summonerData = UserDefaultsData().getObject(key: "summonerData")
            SwiftSpinner.show("Fetching your runes ...")
            APIManager.instance.getUserData(id: Global.shared.summonerData["summoner"]["id"].stringValue, onSuccess: { json in
                if(json.count == 0){
                    self.errorMessage.text = "You dont have any runes"
                    self.SummonerTableView.backgroundView = self.errorView
                }
                else{
                    self.SummonerTableView.backgroundView = nil
                }
                self.builds = json
                self.SummonerTableView.reloadData()
                Global.shared.forceUpdate = false
                SwiftSpinner.hide()
            }, onFailure: { error in
                self.errorMessage.text = error.localizedDescription
                self.SummonerTableView.backgroundView = self.errorView
                self.builds = nil
                self.SummonerTableView.reloadData()
                SwiftSpinner.hide()
            })
            isLogin = false
            addIcon.isEnabled = true
            logoutIcon.isEnabled = true
        }
        else{
            SummonerTableView.reloadData()
            print("disabble")
            isLogin = true
            addIcon.isEnabled = false
            logoutIcon.isEnabled = false
        }
    }
    
    
    func buttonClicked(summonerName: String, code: String, sumonerRegion: Int) {
        if(summonerName == ""){
            self.showAlert(title: "", message: "Summoner name is required", ok: "ok")
        }
        else if(sumonerRegion == -1){
            self.showAlert(title: "", message: "Region is required", ok: "ok")
        }
        else{
            SwiftSpinner.show("Login in progress ...")
            let summoner = summonerName.addingPercentEncoding( withAllowedCharacters: .urlHostAllowed) ?? ""
            APIManager.instance.registerSummoner(name: summoner, region: Global.shared.regions[sumonerRegion]["key"] ?? "", code: code, onSuccess: { json in
                print(json)
                if(json["status"].exists()){
                    SwiftSpinner.hide()
                    if(json["status"]["status_code"].intValue == 404){
                        self.showAlert(title: "", message: "Summoner " + summoner + " not found in " + Global.shared.regions[sumonerRegion]["name"]!, ok: "Ok")
                    }
                    else{
                        self.showAlert(title: "", message: json["status"]["message"].stringValue, ok: "Ok")
                    }
                }
                else{
                    if(json["verify"].boolValue){
                        UserDefaultsData().setObject(value: json,key: "summonerData")
                        Global.shared.summonerData = UserDefaultsData().getObject(key: "summonerData")
                        self.checkLoginView()
                    }
                    else{
                        SwiftSpinner.hide()
                        self.showAlert(title: "", message: "Make sure you type the code in league client", ok: "Ok")
                    }

                }
            }, onFailure: { error in
                print(error)
                SwiftSpinner.hide()
                self.showAlert(title: "", message: error.localizedDescription, ok: "Ok")
            })
        }
    }
    
    @IBOutlet weak var addIcon: UIBarButtonItem!
    @IBOutlet weak var logoutIcon: UIBarButtonItem!
    
    @IBOutlet weak var SummonerTableView: UITableView!
    
    
    @IBAction func addBuild(_ sender: UIBarButtonItem) {
        
        self.performSegue(withIdentifier: "addBuild", sender: self)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if(Global.shared.forceUpdate){
            self.checkLoginView()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideBackButton()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        SummonerTableView.estimatedRowHeight = 85.0
        SummonerTableView.rowHeight = UITableViewAutomaticDimension
        SummonerTableView.tableFooterView = UIView()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ForgeRunesViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if(isLogin){
            return 1
        }
        else{
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(isLogin){
            return 1
        }
        else{
            if(section == 0){
                return 1
            }
            else{
                return builds?.count ?? 0
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(isLogin){
            let cell = Bundle.main.loadNibNamed("JoinTheForgeTableViewCell", owner: self, options: nil)?.first as! JoinTheForgeTableViewCell
            cell.delegate = self
            return cell
        }
        else{
            if(indexPath.section == 0){
                let cell = Bundle.main.loadNibNamed("SummonerLoginTableViewCell", owner: self, options: nil)?.first as! SummonerLoginTableViewCell
                print("http://ddragon.leagueoflegends.com/cdn/" + Global.shared.summonerData["summoner"]["summoner_profile_icon"].stringValue)
                cell.summonerName.text = Global.shared.summonerData["summoner"]["summoner_name"].stringValue
                cell.summonerIcon.af_setImage(withURL: URL(string:"http://ddragon.leagueoflegends.com/cdn/" + Global.shared.summonerData["summoner"]["summoner_profile_icon"].stringValue)!, placeholderImage: UIImage(named:"grid-placeholder"))
                
                return cell
                
            }
            else{
                let cell = Bundle.main.loadNibNamed("RuneBuildTableViewCell", owner: self, options: nil)?.first as! RuneBuildTableViewCell
                cell.dislikeButton.isHidden = false
                cell.dislikeButton.tag = builds[indexPath.row]["builds"][0]["id"].intValue
                cell.delegate = self
                cell.dislikeButton.setImage(UIImage(named:"remove"), for: .normal)
                cell.runeTitle.text = builds[indexPath.row]["builds"][0]["title"].stringValue
                cell.proName.text = builds[indexPath.row]["name"].stringValue
                cell.proSubtitle.text = builds[indexPath.row]["builds"][0]["updated_at"].stringValue
                cell.proPlayer.af_setImage(withURL: generateUrl(name: builds[indexPath.row]["key"].stringValue, placeHolder: "grid-placeholder.png", type: "champions", extention: "jpg"), placeholderImage: UIImage(named:builds[indexPath.row]["key"].stringValue))
                cell.runeDescription.text = builds[indexPath.row]["builds"][0]["description"].stringValue
                cell.patch.text = builds[indexPath.row]["builds"][0]["patch"]["patch"].stringValue
                cell.lane.text = builds[indexPath.row]["builds"][0]["lane"]["name"].stringValue

                cell.laneImage.image = UIImage(named:builds[indexPath.row]["builds"][0]["lane"]["image"].stringValue)

                cell.runeBackground.image = UIImage(named:getBuildRuneImage(runeId: builds[indexPath.row]["builds"][0]["rune_main"]["rune_id"].stringValue))

                cell.main_rune.image = UIImage(named:builds[indexPath.row]["builds"][0]["primary_data"][0]["build_keystone"]["stone_id"].stringValue)
                cell.second_rune.image = UIImage(named:builds[indexPath.row]["builds"][0]["rune_secondary"]["rune_id"].stringValue)

                return cell
                
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(isLogin){
            return 600
        }
        else{
            if(indexPath.section == 0){
                return UITableViewAutomaticDimension
            }
            else{
                return 220
            }
        }
    }
    
    
}

