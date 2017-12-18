//
//  SelectedRuneViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import AVKit

class SelectedRuneViewController: UIViewController,VideoPlayerButtonDelegate {
    
    
    func didPressButton(button: UIButton) {
        playVideo(videName: "render_Electrocute")
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
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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


extension SelectedRuneViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 3){
            return 5
        }
        else{
            return 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0){
            let cell = Bundle.main.loadNibNamed("SelectedRuneVideoTableViewCell", owner: self, options: nil)?.first as! SelectedRuneVideoTableViewCell
            cell.delegate = self
            cell.videoScreen.image = getThumbnailFrom(path: URL(fileURLWithPath: Bundle.main.path(forResource: "render_Electrocute", ofType:"m4v")!))
            return cell
        }
        else if (indexPath.section == 1){
            let cell = Bundle.main.loadNibNamed("SelectedRuneDescriptionTableViewCell", owner: self, options: nil)?.first as! SelectedRuneDescriptionTableViewCell

            return cell
        }
        else if (indexPath.section == 2){
            let cell = Bundle.main.loadNibNamed("SelectedRuneTakesOnTableViewCell", owner: self, options: nil)?.first as! SelectedRuneTakesOnTableViewCell
            return cell
            
        }
        else{
            let cell = Bundle.main.loadNibNamed("SelectedRuneChampionsListTableViewCellTableViewCell", owner: self, options: nil)?.first as! SelectedRuneChampionsListTableViewCellTableViewCell
            
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
