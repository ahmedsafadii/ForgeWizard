//
//  ShowChampionRunesViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit

class ShowChampionRunesViewController: UIViewController {

    @IBOutlet weak var ChampionRunes: UITableView!
    
    @IBAction func shareView(_ sender: UIBarButtonItem) {
        if let screen = self.view.capture() {
            let vc = UIActivityViewController(activityItems: [screen], applicationActivities: [])
            present(vc, animated: true)
        }
        
    }
    
    
    @IBAction func closeView(_ sender: UIBarButtonItem) {
        
        _ = navigationController?.popViewController(animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChampionRunes.estimatedRowHeight = 85.0
        ChampionRunes.rowHeight = UITableViewAutomaticDimension
        ChampionRunes.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ShowChampionRunesViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = Bundle.main.loadNibNamed("HeaderBuildTableViewCell", owner: self, options: nil)?.first as! HeaderBuildTableViewCell
            
            return cell
        }
        else if(indexPath.section == 1){
            let cell = Bundle.main.loadNibNamed("MainRunesBuildTableViewCell", owner: self, options: nil)?.first as! MainRunesBuildTableViewCell
            
            return cell
        }
        else{
            let cell = Bundle.main.loadNibNamed("SecondaryRunesBuildsTableViewCell", owner: self, options: nil)?.first as! SecondaryRunesBuildsTableViewCell
            
            return cell
        }
        
    }
    
    
}
