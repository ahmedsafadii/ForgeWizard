//
//  ChampionsBuildsListViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class ChampionsBuildsListViewController: UIViewController {
    
    @IBOutlet weak var ChampionsRunes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ChampionsRunes.sectionHeaderHeight = 70
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ChampionsBuildsListViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
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
            return 2
        }
        else{
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showBuild", sender: self)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("RuneBuildTableViewCell", owner: self, options: nil)?.first as! RuneBuildTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
}
