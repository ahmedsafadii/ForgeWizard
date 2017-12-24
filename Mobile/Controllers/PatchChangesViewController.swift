//
//  PatchChangesViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON
import SwiftSpinner

class PatchChangesViewController: UIViewController {

    var patchData:JSON!
    let runesData = pathToJson(fileName: "Runes.json")

    
    @IBOutlet weak var PatchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PatchTableView.estimatedRowHeight = 85.0
        PatchTableView.rowHeight = UITableViewAutomaticDimension
        PatchTableView.tableFooterView = UIView()
        self.hideBackButton()
        
        for (_,value) in runesData{
            var RuneData = [String]()
            RuneData.append(value["rune_id"].stringValue)
            for(_,v) in value["keystones"]{
                RuneData.append(v["stone_id"].stringValue)
            }
            Global.shared.RunesColors.append(RuneData)
        }
        
        fetchLastUpdate()
        
    }
    
    @IBAction func updatePatches(_ sender: UIBarButtonItem) {
        
        fetchLastUpdate()
    }
    
    
    func fetchLastUpdate(){
        
        SwiftSpinner.show("Fetch latest changes...")
        APIManager.instance.downloadPatches(fileName: "Patch.json", onSuccess: { json in
            SwiftSpinner.hide()
            self.patchData = json
            self.PatchTableView.reloadData()
            
        }, onFailure: {error in
            SwiftSpinner.hide()
            if(fileExist(fileName: "Patch.json")){
                self.patchData = pathToJson(fileName: "Patch.json")
                self.PatchTableView.reloadData()
            }
            else{
                self.patchData = []
                self.PatchTableView.reloadData()
            }
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension PatchChangesViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patchData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell = Bundle.main.loadNibNamed("GetHeaderPatchTableViewCell", owner: self, options: nil)?.first as! GetHeaderPatchTableViewCell
            cell.patchTitle.text = patchData[indexPath.row]["title"].stringValue
            cell.patchDescription.text = patchData[indexPath.row]["description"].stringValue.htmlToString
            cell.patchTime.text = patchData[indexPath.row]["patch_date"].stringValue
            return cell
            
        }
        else{
            let cell = Bundle.main.loadNibNamed("GetPreviusPatchTableViewCell", owner: self, options: nil)?.first as! GetPreviusPatchTableViewCell
            
            cell.patchTitle.text = patchData[indexPath.row]["title"].stringValue
            cell.patchDate.text = patchData[indexPath.row]["patch_date"].stringValue
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Global.shared.SelectedPatch = patchData[indexPath.row]
        self.performSegue(withIdentifier: "showPatch", sender: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
}
