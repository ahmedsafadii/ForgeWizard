//
//  ForgeRunesViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class ForgeRunesViewController: UIViewController {

    @IBOutlet weak var addIcon: UIBarButtonItem!
    @IBOutlet weak var logoutIcon: UIBarButtonItem!
    
    @IBOutlet weak var SummonerTableView: UITableView!

    var isLogin = true
    
    
    @IBAction func addBuild(_ sender: UIBarButtonItem) {
        
        self.performSegue(withIdentifier: "addBuild", sender: self)
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
                return 10
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(isLogin){
            let cell = Bundle.main.loadNibNamed("JoinTheForgeTableViewCell", owner: self, options: nil)?.first as! JoinTheForgeTableViewCell
            
            return cell
        }
        else{
            if(indexPath.section == 0){
                let cell = Bundle.main.loadNibNamed("SummonerLoginTableViewCell", owner: self, options: nil)?.first as! SummonerLoginTableViewCell
                
                return cell
                
            }
            else{
                let cell = Bundle.main.loadNibNamed("RuneBuildTableViewCell", owner: self, options: nil)?.first as! RuneBuildTableViewCell
                cell.dislikeButton.isHidden = false
                cell.dislikeButton.setImage(UIImage(named:"remove"), for: .normal)
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

