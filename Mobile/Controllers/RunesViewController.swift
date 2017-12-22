//
//  RunesViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/18/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON

class RunesViewController: UIViewController {
    
    var demoData = [JSON]()
    var selectedIndex = 0
    var allowChange = true
    
    let championsData = loadJson(fileName: "Runes")
    
    
    @IBOutlet weak var RunesTableView: UITableView!
    @IBOutlet weak var SelectRuneCollection: UICollectionView!
    @IBOutlet weak var runeBackGround: UIImageView!
    
    func setupLayout(){
        demoData.append(["name":"Precision","image":"8000","vfx":"vfx-p","subtitle":"Auto attacks","color":"#D29B58","bg":"path-construct-precision"])
        demoData.append(["name":"Domination","image":"8100","vfx":"vfx-d","subtitle":"Burst damage","color":"#CA5D69","bg":"path-construct-domination"])
        demoData.append(["name":"Sorcery","image":"8200","vfx":"vfx-s","subtitle":"Empowered abilities","color":"#9E6DF6","bg":"path-construct-sorcery"])
        demoData.append(["name":"Resolve","image":"8400","vfx":"vfx-r","subtitle":"Durability","color":"#52A64B","bg":"path-construct-resolve"])
        demoData.append(["name":"Inspiration","image":"8300","vfx":"vfx-i","subtitle":"Creative tools","color":"#689EB0","bg":"path-construct-inspiration"])
        
        runeBackGround.alpha = 0.0
        let animator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeIn)
        animator.addAnimations {
            self.runeBackGround.alpha = CGFloat(0.15)
        }
        animator.addCompletion({_ in
            self.allowChange = true
        })
        
        animator.startAnimation()
        
        RunesTableView.estimatedRowHeight = 85.0
        RunesTableView.rowHeight = UITableViewAutomaticDimension
        RunesTableView.tableFooterView = UIView()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        self.hideBackButton()
        // Do any additional setup after loading the view.
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


extension RunesViewController : UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 1
        }
        else{
            return championsData[selectedIndex]["keystones"].count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0){
            let cell = Bundle.main.loadNibNamed("RuneHeaderTableViewCell", owner: self, options: nil)?.first as! RuneHeaderTableViewCell
            cell.runeTitle.textColor = UIColor(demoData[selectedIndex]["color"].stringValue)
            cell.runeTitle.text = championsData[selectedIndex]["rune_title"].stringValue  + " + any secondary"
            cell.runeDescription.text = championsData[selectedIndex]["rune_description"].stringValue
            return cell
        }
        else{
            let cell = Bundle.main.loadNibNamed("RuneBodyTableViewCell", owner: self, options: nil)?.first as! RuneBodyTableViewCell
            
            cell.runeName.text = championsData[selectedIndex]["keystones"][indexPath.row]["stone_title"].stringValue
            cell.viewColors[0].borderColor = UIColor(demoData[selectedIndex]["color"].stringValue)
            cell.viewColors[1].borderColor = UIColor(demoData[selectedIndex]["color"].stringValue)
            cell.runeName.textColor = UIColor(demoData[selectedIndex]["color"].stringValue)
            cell.runeDescription.text = championsData[selectedIndex]["keystones"][indexPath.row]["stone_short_description"].stringValue
            cell.runeImage.image = UIImage(named:championsData[selectedIndex]["keystones"][indexPath.row]["stone_id"].stringValue)
            if(championsData[selectedIndex]["keystones"][indexPath.row]["isKey"].boolValue){
                cell.runeVideo.isHidden = false
            }
            else{
                cell.runeVideo.isHidden = true
            }
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Global.shared.SelectedRune = championsData[selectedIndex]["keystones"][indexPath.row]
        Global.shared.SelectedRuneStyle = demoData[selectedIndex]
        self.performSegue(withIdentifier: "showSelected", sender: self)
    }
    
}

extension RunesViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return demoData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "rune", for: indexPath) as! RuneCollectionViewCell
        cell.runeName.text = demoData[indexPath.row]["name"].stringValue
        cell.runeName.textColor = UIColor(demoData[indexPath.row]["color"].stringValue)
        cell.runeSubTitle.text = demoData[indexPath.row]["subtitle"].stringValue
        cell.runeImage.image = UIImage(named:demoData[indexPath.row]["image"].stringValue)
        cell.vfx.image = UIImage(named:demoData[indexPath.row]["vfx"].stringValue)
        cell.vfx.alpha = 0.0
        if(indexPath.row == selectedIndex){
            let animator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeIn)
            animator.addAnimations {
                cell.vfx.alpha = CGFloat(1.0)
            }
            animator.addCompletion({_ in
                print("finish")
            })
            animator.startAnimation()
            
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(allowChange){
            if(indexPath.row != selectedIndex){
                self.RunesTableView.reloadData()
                allowChange = false
                selectedIndex = indexPath.row
                self.SelectRuneCollection.reloadData()
                runeBackGround.alpha = 0.0
                RunesTableView.alpha = 0.0
                runeBackGround.image = UIImage(named:demoData[indexPath.row]["bg"].stringValue)
                let animator = UIViewPropertyAnimator.init(duration: 0.5, curve: .easeIn)
                animator.addAnimations {
                    self.runeBackGround.alpha = CGFloat(0.15)
                    self.RunesTableView.alpha = CGFloat(1.0)
                }
                animator.addCompletion({_ in
                    print("finish 2")
                    self.allowChange = true
                })
                animator.startAnimation()
            }
        }
    }
    
    
}
