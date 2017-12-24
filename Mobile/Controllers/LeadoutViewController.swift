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

class LeadoutViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var championsCollection: UICollectionView!
    
    @IBOutlet var loadingView: UIView!
    
    @IBOutlet weak var championNameSrarch: UITextField!
    
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
    var championsDataFilter = [JSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideBackButton()
        filterByLane()
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var filterArray = [false,false,false,false,false,false]
    var enableSelect = true
    func filterByLane(){
        enableSelect = false
        self.championsDataFilter = [JSON]()
        self.championsCollection.reloadData()
        self.championsCollection.backgroundView = loadingView
        let globalQueue = DispatchQueue.global()
        globalQueue.async {
            let orderChamp = self.championsData.arrayValue.sorted { $0["name"].stringValue < $1["name"].stringValue }
            if(self.filterArray.contains(true)){
                if(self.filterArray[0]){
                    for(_,subJson) in JSON(orderChamp) {
                        for(_,subbJ) in subJson["validBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Top"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                        for(_,subbJ) in subJson["usersBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Top"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                    }
                }
                if(self.filterArray[1]){
                    for(_,subJson) in JSON(orderChamp) {
                        for(_,subbJ) in subJson["validBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Jungle"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                        for(_,subbJ) in subJson["usersBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Jungle"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                    }
                }
                if(self.filterArray[2]){
                    for(_,subJson) in JSON(orderChamp) {
                        for(_,subbJ) in subJson["validBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Middle"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                        for(_,subbJ) in subJson["usersBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Middle"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                    }
                }
                if(self.filterArray[3]){
                    for(_,subJson) in JSON(orderChamp) {
                        for(_,subbJ) in subJson["validBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "AD Carry"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                        for(_,subbJ) in subJson["usersBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "AD Carry"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                    }
                }
                if(self.filterArray[4]){
                    for(_,subJson) in JSON(orderChamp) {
                        for(_,subbJ) in subJson["validBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Support"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                        for(_,subbJ) in subJson["usersBuild"]{
                            if(subbJ["lane"]["name"].stringValue == "Support"){
                                if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                    print(subJson["name"],"DUBlicate")
                                }
                                else {
                                    self.championsDataFilter.append(subJson)
                                }
                            }
                        }
                    }
                }
                if(self.filterArray[5]){
                    for(_,subJson) in JSON(orderChamp) {
                        if(subJson["isFree"].boolValue){
                            if self.championsDataFilter.index(where: { $0["name"].stringValue == subJson["name"].stringValue}) != nil {
                                print(subJson["name"],"DUBlicate")
                            }
                            else {
                                self.championsDataFilter.append(subJson)
                            }
                        }
                    }
                }
            }
            else{
                for(_,subJson) in JSON(orderChamp) {
                    self.championsDataFilter.append(subJson)
                }
            }
            DispatchQueue.main.async {
                self.copychampionsDataFilter = self.championsDataFilter
                self.championsCollection.backgroundView = nil
                self.championsCollection.reloadData()
                self.enableSelect = true
            }
            }
    }
    
    @IBAction func filterAction(_ sender: UIButton) {
        if(enableSelect){
        if(sender.tag == 0){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
                filterArray[0] = false
            }
            else{
                sender.backgroundColor = UIColor("#013750")
                filterArray[0] = true
            }
        }
        else if(sender.tag == 1){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
                filterArray[1] = false
            }
            else{
                sender.backgroundColor = UIColor("#013750")
                filterArray[1] = true
            }
        }
        else if(sender.tag == 2){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
                filterArray[2] = false
            }
            else{
                sender.backgroundColor = UIColor("#013750")
                filterArray[2] = true
            }
        }
        else if(sender.tag == 3){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
                filterArray[3] = false
            }
            else{
                sender.backgroundColor = UIColor("#013750")
                filterArray[3] = true
            }
        }
        else if(sender.tag == 4){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
                filterArray[4] = false
            }
            else{
                sender.backgroundColor = UIColor("#013750")
                filterArray[4] = true
            }
        }
        else if(sender.tag == 5){
            if(sender.backgroundColor == UIColor("#013750")){
                sender.backgroundColor = UIColor.clear
                filterArray[5] = false
            }
            else{
                sender.backgroundColor = UIColor("#013750")
                filterArray[5] = true
            }
        }
        championNameSrarch.text = ""
        filterByLane()
        }
    }
    
    
    var copychampionsDataFilter = [JSON]()
    
    @IBAction func searchChampionName(_ sender: UITextField) {
        
        let championSelect = sender.text?.lowercased()
        
        if (championSelect == ""){
            self.championsDataFilter = self.copychampionsDataFilter
        }
        else{
            self.championsDataFilter = [JSON]()
            for (_, subJson) in JSON(copychampionsDataFilter){
                if subJson["name"].stringValue.lowercased().range(of:championSelect!) != nil {
                    championsDataFilter.append(subJson)
                }
            }
        }
        
        championsCollection.reloadData()
        
        
    }
    
}

extension LeadoutViewController : UISearchBarDelegate {
    
    
    
    
}

extension LeadoutViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return championsDataFilter.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChmpionCollectionViewCell", for: indexPath) as! ChmpionCollectionViewCell
        cell.championName.text = championsDataFilter[indexPath.row]["name"].stringValue
        cell.championImage.af_setImage(withURL: generateUrl(name: championsDataFilter[indexPath.row]["key"].stringValue, placeHolder: "grid-placeholder.png", type: "champions", extention: "jpg"), placeholderImage: UIImage(named:championsDataFilter[indexPath.row]["key"].stringValue))
        if(championsDataFilter[indexPath.row]["isFree"].boolValue){
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
        APIManager.instance.getChampionData(id: championsDataFilter[indexPath.row]["id"].stringValue, onSuccess: { json in
            Global.shared.SelectedChampionBuild = json[0]
            SwiftSpinner.hide({
                self.performSegue(withIdentifier: "showBuildList", sender: self)
            })
        }, onFailure: { error in
            print(error)
            SwiftSpinner.hide()
            Global.shared.SelectedChampionBuild = self.championsDataFilter[indexPath.row]
            self.performSegue(withIdentifier: "showBuildList", sender: self)
        })
    }
    
    
}

