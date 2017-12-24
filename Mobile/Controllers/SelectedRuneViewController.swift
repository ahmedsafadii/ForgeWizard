//
//  SelectedRuneViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import AVKit
import SwiftyJSON

class SelectedRuneViewController: UIViewController,VideoPlayerButtonDelegate {
    
    var keystone:JSON!
    var championArray = [String]()
    
    func didPressButton(button: UIButton) {
        let videoName = (keystone["stone_video"].stringValue as NSString).lastPathComponent.stripExtension()
        playVideo(videName: videoName)
    }
    
    private func playVideo(videName:String) {
        guard let path = Bundle.main.path(forResource: videName, ofType:"m4v") else {
            debugPrint("video.m4v not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
    @IBOutlet weak var backgroundImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        keystone = Global.shared.SelectedRune
        for i in 0...keystone["stone_taken_on"].stringValue.components(separatedBy: "|").count - 1{
            championArray.append(keystone["stone_taken_on"].stringValue.components(separatedBy: "|")[i])
        }
        backgroundImage.image = UIImage(named:Global.shared.SelectedRuneStyle["bg"].stringValue)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension SelectedRuneViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 3){
            return championArray.count
        }
        else if (section == 0){
            if(keystone["isKey"].boolValue){
                return 1
            }
            else{
                return 0
            }
        }
        else{
            return 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0){
            let cell = Bundle.main.loadNibNamed("SelectedRuneVideoTableViewCell", owner: self, options: nil)?.first as! SelectedRuneVideoTableViewCell
            cell.delegate = self
            cell.playVideo.tag = indexPath.row
            let videoName = (keystone["stone_video"].stringValue as NSString).lastPathComponent.stripExtension()
            cell.videoScreen.image = getThumbnailFrom(path: URL(fileURLWithPath: Bundle.main.path(forResource: videoName, ofType:"m4v")!))
            return cell
        }
        else if (indexPath.section == 1){
            let cell = Bundle.main.loadNibNamed("SelectedRuneDescriptionTableViewCell", owner: self, options: nil)?.first as! SelectedRuneDescriptionTableViewCell
            
            cell.runeImage.image = UIImage(named:keystone["stone_id"].stringValue)
            cell.runeDescription.text = keystone["stone_long_description"].stringValue.htmlToString
            cell.runeName.text = keystone["stone_title"].stringValue
            cell.runeName.textColor = UIColor(Global.shared.SelectedRuneStyle["color"].stringValue)
            cell.viewColors[0].borderColor = UIColor(Global.shared.SelectedRuneStyle["color"].stringValue)
            cell.viewColors[1].borderColor = UIColor(Global.shared.SelectedRuneStyle["color"].stringValue)
            
            
            //SelectedRuneStyle
            return cell
        }
        else if (indexPath.section == 2){
            let cell = Bundle.main.loadNibNamed("SelectedRuneTakesOnTableViewCell", owner: self, options: nil)?.first as! SelectedRuneTakesOnTableViewCell
            return cell
            
        }
        else{
            let cell = Bundle.main.loadNibNamed("SelectedRuneChampionsListTableViewCellTableViewCell", owner: self, options: nil)?.first as! SelectedRuneChampionsListTableViewCellTableViewCell
            cell.chmpionName.text = championArray[indexPath.row]
            cell.championImage.image = UIImage(named:championArray[indexPath.row].replacingOccurrences(of: "'", with: "").capitalized.replacingOccurrences(of: " ", with: ""))
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 0){
            return 188
        }
        else if (indexPath.section == 3){
            return 67
        }
        else{
            return UITableViewAutomaticDimension
        }
    }
}
