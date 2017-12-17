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

class LeadoutViewController: UIViewController {
    
    
    let championsData = loadJson(fileName: "LocalChampions")
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        cell.championImage.af_setImage(withURL: generateUrl(name: championsData[indexPath.row]["internet_image"].stringValue, placeHolder: "grid-placeholder.png"), placeholderImage: UIImage(named:championsData[indexPath.row]["local_image"].stringValue))
        
        return cell
    }
    
    
}

