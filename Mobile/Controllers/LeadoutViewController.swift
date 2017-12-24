//
//  LeadoutViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//


import UIKit
import SwiftyJSON
import AlamofireImage
import SwiftSpinner
import Reachability

class LeadoutViewController: UIViewController {
    
    
    @IBAction func updateAgain(_ sender: UIBarButtonItem) {

        let reachability = Reachability()
        
        switch reachability?.connection {
        case .wifi?:
            UserDefaults.standard.set(0, forKey: "updateTimer")
            self.dismiss(animated: true, completion: nil)
        case .cellular?:
            UserDefaults.standard.set(0, forKey: "updateTimer")
            self.dismiss(animated: true, completion: nil)
        case .some(.none):
            self.dismiss(animated: true, completion: nil)
        case .none:
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    
    let championsData = pathToJson(fileName: "LocalData.json")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideBackButton()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func filterAction(_ sender: UIButton) {
        
        if(sender.tag == 0){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
            }
            else{
                sender.backgroundColor = UIColor("#013750")
            }
        }
        else if(sender.tag == 1){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
            }
            else{
                sender.backgroundColor = UIColor("#013750")
            }
        }
        else if(sender.tag == 2){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
            }
            else{
                sender.backgroundColor = UIColor("#013750")
            }
        }
        else if(sender.tag == 3){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
            }
            else{
                sender.backgroundColor = UIColor("#013750")
            }
        }
        else if(sender.tag == 4){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
            }
            else{
                sender.backgroundColor = UIColor("#013750")
            }
        }
        else if(sender.tag == 5){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
            }
            else{
                sender.backgroundColor = UIColor("#013750")
            }
        }
    }
}

extension LeadoutViewController : UISearchBarDelegate {
    
    
    
    
}

extension LeadoutViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return championsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChmpionCollectionViewCell", for: indexPath) as! ChmpionCollectionViewCell
        cell.championName.text = championsData[indexPath.row]["name"].stringValue
        cell.championImage.af_setImage(withURL: generateUrl(name: championsData[indexPath.row]["key"].stringValue, placeHolder: "grid-placeholder.png", type: "champions", extention: "jpg"), placeholderImage: UIImage(named:championsData[indexPath.row]["key"].stringValue))
        if(championsData[indexPath.row]["isFree"].boolValue){
            cell.isFree.isHidden = false
        }
        else{
            cell.isFree.isHidden = true
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        SwiftSpinner.show("Fetching champion runes", animated: true)
        SwiftSpinner.setTitleColor(UIColor.white)
        SwiftSpinner.sharedInstance.innerColor = nil
        APIManager.instance.getChampionData(id: championsData[indexPath.row]["id"].stringValue, onSuccess: { json in
            Global.shared.SelectedChampionBuild = self.championsData[indexPath.row]
            SwiftSpinner.hide({
                self.performSegue(withIdentifier: "showBuildList", sender: self)
            })
        }, onFailure: { error in
            SwiftSpinner.hide()
            Global.shared.SelectedChampionBuild = self.championsData[indexPath.row]
            self.performSegue(withIdentifier: "showBuildList", sender: self)
        })
    }
    
    
}

