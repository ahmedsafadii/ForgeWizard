//
//  AddNewBuildViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/21/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftyJSON

class AddNewBuildViewController: UIViewController {

    
    @IBOutlet weak var m_r_subtitle: UILabel!
    @IBOutlet weak var m_r_title: UILabel!
    @IBOutlet weak var m_r_border: UIImageView!
    @IBOutlet weak var m_r_image: UIImageView!
    @IBOutlet weak var m_stack: UIStackView!
    @IBOutlet weak var m_button: UIButton!
    @IBOutlet weak var m_line: UIView!
    
    var selectedMainRune = 0
    var selectedSecondaryRune = 0
    var demoData = [JSON]()
    let RunesData = loadJson(fileName: "Runes")
    
    func changeMainRune(rune:Int){
        
        var freePosition = [Int]()
        
        for i in 0...4{
            if(i != selectedMainRune){
                freePosition.append(i)
            }
        }
        
        selectedSecondaryRune = freePosition[0]
        changeSecondaryRune(rune:selectedSecondaryRune)
        
        
        m_r_border.image = UIImage(named:demoData[rune]["border"].stringValue)
        m_r_image.image = UIImage(named:demoData[rune]["image"].stringValue)
        m_r_title.text = demoData[rune]["name"].stringValue
        m_r_subtitle.text = demoData[rune]["subtitle"].stringValue
        m_r_title.textColor =   UIColor(demoData[rune]["color"].stringValue)
        m_line.backgroundColor = UIColor(demoData[rune]["color"].stringValue)
        
        // change level 1 runes
        for i in 0...m_1_button.count - 1{
            m_1_button[i].setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][i]["stone_id"].stringValue), for: .normal)
            m_r_1_view[i].borderColor = UIColor(demoData[rune]["color"].stringValue)
        }
        m_r_1_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        m_r_1_title.isHidden = true
        m_r_1_why.isHidden = true
        m_1_stack.isHidden = false
        m_1_textView.isHidden = true
        m_1_textView.text = "Why did you pick this rune ?"
        m_r_1_image.setImage(UIImage(named:"grid-placeholder"), for: .normal)
        m_r_1_image.borderWidth = 2
        m_r_1_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        // change level 1 runes
        
        
        // change level 2 runes
        for i in 0...m_2_button.count - 1{
            let increase = 3
            m_2_button[i].setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][i + increase]["stone_id"].stringValue), for: .normal)
            m_r_2_view[i].borderColor = UIColor(demoData[rune]["color"].stringValue)
        }
        m_r_2_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        m_r_2_title.isHidden = true
        m_r_2_why.isHidden = true
        m_2_stack.isHidden = false
        m_2_textView.isHidden = true
        m_2_textView.text = "Why did you pick this rune ?"
        m_r_2_image.setImage(UIImage(named:"grid-placeholder"), for: .normal)
        m_r_2_image.borderWidth = 2
        m_r_2_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        // change level 2 runes
        
        // change level 4 runes
        for i in 0...m_3_button.count - 1{
            let increase = 6
            m_3_button[i].setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][i + increase]["stone_id"].stringValue), for: .normal)
            m_r_3_view[i].borderColor = UIColor(demoData[rune]["color"].stringValue)
        }
        m_r_3_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        m_r_3_title.isHidden = true
        m_r_3_why.isHidden = true
        m_3_stack.isHidden = false
        m_3_textView.isHidden = true
        m_3_textView.text = "Why did you pick this rune ?"
        m_r_3_image.setImage(UIImage(named:"grid-placeholder"), for: .normal)
        m_r_3_image.borderWidth = 2
        m_r_3_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        // change level 3 runes
        
        // change level 3 runes
        for i in 0...m_3_button.count - 1{
            let increase = 9
            m_4_button[i].setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][i + increase]["stone_id"].stringValue), for: .normal)
            m_r_4_view[i].borderColor = UIColor(demoData[rune]["color"].stringValue)
        }
        m_r_4_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        m_r_4_title.isHidden = true
        m_r_4_why.isHidden = true
        m_4_stack.isHidden = false
        m_4_textView.isHidden = true
        m_4_textView.text = "Why did you pick this rune ?"
        m_r_4_image.setImage(UIImage(named:"grid-placeholder"), for: .normal)
        m_r_4_image.borderWidth = 2
        m_r_4_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        // change level 4 runes
 
    }

    @IBAction func changeMainRune(_ sender: UIButton) {
        
        if(sender.tag == 1){
            sender.tag = 2
            m_stack.isHidden = true
            m_r_title.isHidden = false
            m_r_subtitle.isHidden = false
        }
        else if(sender.tag == 2){
            sender.tag = 1
            m_stack.isHidden = false
            m_r_title.isHidden = true
            m_r_subtitle.isHidden = true
        }
        else{
            m_stack.isHidden = true
            m_r_title.isHidden = false
            m_r_subtitle.isHidden = false
            m_button.tag = 2
            if(sender.tag == 10){
                selectedMainRune = 0
            }
            else if(sender.tag == 20){
                selectedMainRune = 1
            }
            else if(sender.tag == 30){
                selectedMainRune = 2
            }
            else if(sender.tag == 40){
                selectedMainRune = 3
            }
            else if(sender.tag == 50){
                selectedMainRune = 4
            }
            
            changeMainRune(rune:selectedMainRune)

        }

    }
    
    

    
    @IBAction func changeLevelOneRune(_ sender: UIButton) {
        
        if(sender.tag == 60){
            m_r_1_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][0]["stone_id"].stringValue), for: .normal)
            m_r_1_image.borderWidth = 0
            m_1_stack.isHidden = true
            m_r_1_why.isHidden = false
            m_r_1_title.isHidden = false
            m_1_textView.isHidden = false
            m_r_1_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_1_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_1_title.text = RunesData[selectedMainRune]["keystones"][0]["stone_title"].stringValue
            m_r_1_image.tag = 63
        }
        else if(sender.tag == 61){
            m_r_1_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][1]["stone_id"].stringValue), for: .normal)
            m_r_1_image.borderWidth = 0
            m_1_stack.isHidden = true
            m_r_1_why.isHidden = false
            m_r_1_title.isHidden = false
            m_1_textView.isHidden = false
            m_r_1_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_1_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_1_title.text = RunesData[selectedMainRune]["keystones"][1]["stone_title"].stringValue
            m_r_1_image.tag = 63
        }
        else if(sender.tag == 62){
            m_r_1_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][2]["stone_id"].stringValue), for: .normal)
            m_r_1_image.borderWidth = 0
            m_1_stack.isHidden = true
            m_r_1_why.isHidden = false
            m_r_1_title.isHidden = false
            m_1_textView.isHidden = false
            m_r_1_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_1_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_1_title.text = RunesData[selectedMainRune]["keystones"][2]["stone_title"].stringValue
            m_r_1_image.tag = 63
        }
        else{
            if(sender.tag == 63){
                sender.tag = 64
                m_1_stack.isHidden = false
                m_r_1_why.isHidden = true
                m_r_1_title.isHidden = true
                m_1_textView.isHidden = true
            }
            else{
                sender.tag = 63
                m_1_stack.isHidden = true
                m_r_1_why.isHidden = false
                m_r_1_title.isHidden = false
                m_1_textView.isHidden = false
            }
        }
    }
    
    
    
    @IBOutlet var m_r_1_view: [UIView]!
    @IBOutlet weak var m_r_1_title: UILabel!
    @IBOutlet weak var m_r_1_why: UIButton!
    @IBOutlet weak var m_r_1_image: UIButton!
    @IBOutlet weak var m_1_stack: UIStackView!
    @IBOutlet var m_1_button: [UIButton]!
    @IBOutlet weak var m_1_textView: UITextView!

    
    
    
    @IBAction func changeLevelTwoRune(_ sender: UIButton) {
        
        if(sender.tag == 65){
            m_r_2_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][3]["stone_id"].stringValue), for: .normal)
            m_r_2_image.borderWidth = 2
            m_2_stack.isHidden = true
            m_r_2_why.isHidden = false
            m_r_2_title.isHidden = false
            m_2_textView.isHidden = false
            m_r_2_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_2_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_2_title.text = RunesData[selectedMainRune]["keystones"][3]["stone_title"].stringValue
            m_r_2_image.tag = 68
        }
        else if(sender.tag == 66){
            m_r_2_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][4]["stone_id"].stringValue), for: .normal)
            m_r_2_image.borderWidth = 2
            m_2_stack.isHidden = true
            m_r_2_why.isHidden = false
            m_r_2_title.isHidden = false
            m_2_textView.isHidden = false
            m_r_2_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_2_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_2_title.text = RunesData[selectedMainRune]["keystones"][4]["stone_title"].stringValue
            m_r_2_image.tag = 68
        }
        else if(sender.tag == 67){
            m_r_2_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][5]["stone_id"].stringValue), for: .normal)
            m_r_2_image.borderWidth = 2
            m_2_stack.isHidden = true
            m_r_2_why.isHidden = false
            m_r_2_title.isHidden = false
            m_2_textView.isHidden = false
            m_r_2_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_2_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_2_title.text = RunesData[selectedMainRune]["keystones"][5]["stone_title"].stringValue
            m_r_2_image.tag = 68
        }
        else{
            if(sender.tag == 68){
                sender.tag = 69
                m_2_stack.isHidden = false
                m_r_2_why.isHidden = true
                m_r_2_title.isHidden = true
                m_2_textView.isHidden = true
            }
            else{
                sender.tag = 68
                m_2_stack.isHidden = true
                m_r_2_why.isHidden = false
                m_r_2_title.isHidden = false
                m_2_textView.isHidden = false
            }
        }
    }
    
    
    
    @IBOutlet var m_r_2_view: [UIView]!
    @IBOutlet weak var m_r_2_title: UILabel!
    @IBOutlet weak var m_r_2_why: UIButton!
    @IBOutlet weak var m_r_2_image: UIButton!
    @IBOutlet weak var m_2_stack: UIStackView!
    @IBOutlet var m_2_button: [UIButton]!
    @IBOutlet weak var m_2_textView: UITextView!

    
    
    
    
    @IBAction func changeLevelThreeRune(_ sender: UIButton) {
        
        if(sender.tag == 70){
            m_r_3_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][6]["stone_id"].stringValue), for: .normal)
            m_r_3_image.borderWidth = 2
            m_3_stack.isHidden = true
            m_r_3_why.isHidden = false
            m_r_3_title.isHidden = false
            m_3_textView.isHidden = false
            m_r_3_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_3_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_3_title.text = RunesData[selectedMainRune]["keystones"][6]["stone_title"].stringValue
            m_r_3_image.tag = 73
        }
        else if(sender.tag == 71){
            m_r_3_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][7]["stone_id"].stringValue), for: .normal)
            m_r_3_image.borderWidth = 2
            m_3_stack.isHidden = true
            m_r_3_why.isHidden = false
            m_r_3_title.isHidden = false
            m_3_textView.isHidden = false
            m_r_3_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_3_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_3_title.text = RunesData[selectedMainRune]["keystones"][7]["stone_title"].stringValue
            m_r_3_image.tag = 73
        }
        else if(sender.tag == 72){
            m_r_3_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][8]["stone_id"].stringValue), for: .normal)
            m_r_3_image.borderWidth = 2
            m_3_stack.isHidden = true
            m_r_3_why.isHidden = false
            m_r_3_title.isHidden = false
            m_3_textView.isHidden = false
            m_r_3_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_3_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_3_title.text = RunesData[selectedMainRune]["keystones"][8]["stone_title"].stringValue
            m_r_3_image.tag = 73
        }
        else{
            if(sender.tag == 73){
                sender.tag = 74
                m_3_stack.isHidden = false
                m_r_3_why.isHidden = true
                m_r_3_title.isHidden = true
                m_3_textView.isHidden = true
            }
            else{
                sender.tag = 73
                m_3_stack.isHidden = true
                m_r_3_why.isHidden = false
                m_r_3_title.isHidden = false
                m_3_textView.isHidden = false
            }
        }
    }
    
    
    
    @IBOutlet var m_r_3_view: [UIView]!
    @IBOutlet weak var m_r_3_title: UILabel!
    @IBOutlet weak var m_r_3_why: UIButton!
    @IBOutlet weak var m_r_3_image: UIButton!
    @IBOutlet weak var m_3_stack: UIStackView!
    @IBOutlet var m_3_button: [UIButton]!
    @IBOutlet weak var m_3_textView: UITextView!
   
    
    
    @IBAction func changeLevelForthRune(_ sender: UIButton) {
        
        if(sender.tag == 75){
            m_r_4_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][9]["stone_id"].stringValue), for: .normal)
            m_r_4_image.borderWidth = 2
            m_4_stack.isHidden = true
            m_r_4_why.isHidden = false
            m_r_4_title.isHidden = false
            m_4_textView.isHidden = false
            m_r_4_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_4_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_4_title.text = RunesData[selectedMainRune]["keystones"][9]["stone_title"].stringValue
            m_r_4_image.tag = 78
        }
        else if(sender.tag == 76){
            m_r_4_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][10]["stone_id"].stringValue), for: .normal)
            m_r_4_image.borderWidth = 2
            m_4_stack.isHidden = true
            m_r_4_why.isHidden = false
            m_r_4_title.isHidden = false
            m_4_textView.isHidden = false
            m_r_4_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_4_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_4_title.text = RunesData[selectedMainRune]["keystones"][10]["stone_title"].stringValue
            m_r_4_image.tag = 78
        }
        else if(sender.tag == 77){
            m_r_4_image.setImage(UIImage(named:RunesData[selectedMainRune]["keystones"][11]["stone_id"].stringValue), for: .normal)
            m_r_4_image.borderWidth = 2
            m_4_stack.isHidden = true
            m_r_4_why.isHidden = false
            m_r_4_title.isHidden = false
            m_4_textView.isHidden = false
            m_r_4_why.backgroundColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_4_title.textColor = UIColor(demoData[selectedMainRune]["color"].stringValue)
            m_r_4_title.text = RunesData[selectedMainRune]["keystones"][11]["stone_title"].stringValue
            m_r_4_image.tag = 78
        }
        else{
            if(sender.tag == 78){
                sender.tag = 79
                m_4_stack.isHidden = false
                m_r_4_why.isHidden = true
                m_r_4_title.isHidden = true
                m_4_textView.isHidden = true
            }
            else{
                sender.tag = 78
                m_4_stack.isHidden = true
                m_r_4_why.isHidden = false
                m_r_4_title.isHidden = false
                m_4_textView.isHidden = false
            }
        }
    }
    
    
    
    @IBOutlet var m_r_4_view: [UIView]!
    @IBOutlet weak var m_r_4_title: UILabel!
    @IBOutlet weak var m_r_4_why: UIButton!
    @IBOutlet weak var m_r_4_image: UIButton!
    @IBOutlet weak var m_4_stack: UIStackView!
    @IBOutlet var m_4_button: [UIButton]!
    @IBOutlet weak var m_4_textView: UITextView!
    
    
    
    @IBOutlet weak var s_r_subtitle: UILabel!
    @IBOutlet weak var s_r_title: UILabel!
    @IBOutlet weak var s_r_border: UIImageView!
    @IBOutlet weak var s_r_image: UIImageView!
    @IBOutlet weak var s_stack: UIStackView!
    @IBOutlet weak var s_button: UIButton!
    @IBOutlet weak var s_line: UIView!
    

    
    
    @IBAction func changeSecondaryRune(_ sender: UIButton) {
        
        if(sender.tag == 1){
            sender.tag = 2
            s_stack.isHidden = true
            s_r_title.isHidden = false
            s_r_subtitle.isHidden = false
        }
        else if(sender.tag == 2){
            sender.tag = 1
            s_stack.isHidden = false
            s_r_title.isHidden = true
            s_r_subtitle.isHidden = true
        }
        else{
            s_stack.isHidden = true
            s_r_title.isHidden = false
            s_r_subtitle.isHidden = false
            s_button.tag = 2
            
            if(sender.tag == 10){
                if(selectedMainRune == 0){
                    self.showAlert(title: "", message: "The runes can't be duplicated, pick another runes", ok: "Ok")
                    // show alert
                }
                else{
                    selectedSecondaryRune = 0
                }
            }
            else if(sender.tag == 20){
                if(selectedMainRune == 1){
                    self.showAlert(title: "", message: "The runes can't be duplicated, pick another runes", ok: "Ok")
                    // show alert
                }
                else{
                    selectedSecondaryRune = 1
                }
                
            }
            else if(sender.tag == 30){
                if(selectedMainRune == 2){
                    self.showAlert(title: "", message: "The runes can't be duplicated, pick another runes", ok: "Ok")
                    // show alert
                }
                else{
                    selectedSecondaryRune = 2
                }
                
            }
            else if(sender.tag == 40){
                if(selectedMainRune == 3){
                    self.showAlert(title: "", message: "The runes can't be duplicated, pick another runes", ok: "Ok")
                    // show alert
                }
                else{
                    selectedSecondaryRune = 3
                }
                
            }
            else if(sender.tag == 50){
                if(selectedMainRune == 4){
                    self.showAlert(title: "", message: "The runes can't be duplicated, pick another runes", ok: "Ok")
                    // show alert
                }
                else{
                    selectedSecondaryRune = 4
                }
                
            }
            
            changeSecondaryRune(rune:selectedSecondaryRune)
            
        }
        
    }
    

    
    @IBAction func changeLevelSOneRune(_ sender: UIButton) {
        
        if(sender.tag == 75){
            s_r_1_image.setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][0]["stone_id"].stringValue), for: .normal)
            s_r_1_image.borderWidth = 2
            s_1_stack.isHidden = true
            s_r_1_why.isHidden = false
            s_r_1_title.isHidden = false
            s_1_textView.isHidden = false
            s_r_1_why.backgroundColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_1_title.textColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_1_title.text = RunesData[selectedSecondaryRune]["keystones"][0]["stone_title"].stringValue
            s_r_1_image.tag = 78
        }
        else if(sender.tag == 76){
            s_r_1_image.setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][1]["stone_id"].stringValue), for: .normal)
            s_r_1_image.borderWidth = 2
            s_1_stack.isHidden = true
            s_r_1_why.isHidden = false
            s_r_1_title.isHidden = false
            s_1_textView.isHidden = false
            s_r_1_why.backgroundColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_1_title.textColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_1_title.text = RunesData[selectedSecondaryRune]["keystones"][1]["stone_title"].stringValue
            s_r_1_image.tag = 78
        }
        else if(sender.tag == 77){
            s_r_1_image.setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][2]["stone_id"].stringValue), for: .normal)
            s_r_1_image.borderWidth = 2
            s_1_stack.isHidden = true
            s_r_1_why.isHidden = false
            s_r_1_title.isHidden = false
            s_1_textView.isHidden = false
            s_r_1_why.backgroundColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_1_title.textColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_1_title.text = RunesData[selectedSecondaryRune]["keystones"][2]["stone_title"].stringValue
            s_r_1_image.tag = 78
        }
        else{
            if(sender.tag == 78){
                sender.tag = 79
                s_1_stack.isHidden = false
                s_r_1_why.isHidden = true
                s_r_1_title.isHidden = true
                s_1_textView.isHidden = true
            }
            else{
                sender.tag = 78
                s_1_stack.isHidden = true
                s_r_1_why.isHidden = false
                s_r_1_title.isHidden = false
                s_1_textView.isHidden = false
            }
        }
    }
    
    
    @IBOutlet var s_r_1_view: [UIView]!
    @IBOutlet weak var s_r_1_title: UILabel! //
    @IBOutlet weak var s_r_1_why: UIButton! //
    @IBOutlet weak var s_r_1_image: UIButton! //
    @IBOutlet weak var s_1_stack: UIStackView! //
    @IBOutlet var s_1_button: [UIButton]! //
    @IBOutlet weak var s_1_textView: UITextView! //
    
    
    
    @IBAction func changeLevelSTwoRune(_ sender: UIButton) {
        
        if(sender.tag == 75){
            s_r_2_image.setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][3]["stone_id"].stringValue), for: .normal)
            s_r_2_image.borderWidth = 2
            s_2_stack.isHidden = true
            s_r_2_why.isHidden = false
            s_r_2_title.isHidden = false
            s_2_textView.isHidden = false
            s_r_2_why.backgroundColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_2_title.textColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_2_title.text = RunesData[selectedSecondaryRune]["keystones"][3]["stone_title"].stringValue
            s_r_2_image.tag = 78
        }
        else if(sender.tag == 76){
            s_r_2_image.setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][4]["stone_id"].stringValue), for: .normal)
            s_r_2_image.borderWidth = 2
            s_2_stack.isHidden = true
            s_r_2_why.isHidden = false
            s_r_2_title.isHidden = false
            s_2_textView.isHidden = false
            s_r_2_why.backgroundColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_2_title.textColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_2_title.text = RunesData[selectedSecondaryRune]["keystones"][4]["stone_title"].stringValue
            s_r_2_image.tag = 78
        }
        else if(sender.tag == 77){
            s_r_2_image.setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][5]["stone_id"].stringValue), for: .normal)
            s_r_2_image.borderWidth = 2
            s_2_stack.isHidden = true
            s_r_2_why.isHidden = false
            s_r_2_title.isHidden = false
            s_2_textView.isHidden = false
            s_r_2_why.backgroundColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_2_title.textColor = UIColor(demoData[selectedSecondaryRune]["color"].stringValue)
            s_r_2_title.text = RunesData[selectedSecondaryRune]["keystones"][5]["stone_title"].stringValue
            s_r_2_image.tag = 78
        }
        else{
            if(sender.tag == 78){
                sender.tag = 79
                s_2_stack.isHidden = false
                s_r_2_why.isHidden = true
                s_r_2_title.isHidden = true
                s_2_textView.isHidden = true
            }
            else{
                sender.tag = 78
                s_2_stack.isHidden = true
                s_r_2_why.isHidden = false
                s_r_2_title.isHidden = false
                s_2_textView.isHidden = false
            }
        }
    }
    
    
    @IBOutlet var s_r_2_view: [UIView]!
    @IBOutlet weak var s_r_2_title: UILabel! //
    @IBOutlet weak var s_r_2_why: UIButton! //
    @IBOutlet weak var s_r_2_image: UIButton! //
    @IBOutlet weak var s_2_stack: UIStackView! //
    @IBOutlet var s_2_button: [UIButton]! //
    @IBOutlet weak var s_2_textView: UITextView! //
    
    
    
    
    
    
    func changeSecondaryRune(rune:Int){
        
        
        s_r_border.image = UIImage(named:demoData[rune]["border"].stringValue)
        s_r_image.image = UIImage(named:demoData[rune]["image"].stringValue)
        s_r_title.text = demoData[rune]["name"].stringValue
        s_r_subtitle.text = demoData[rune]["subtitle"].stringValue
        s_r_title.textColor =   UIColor(demoData[rune]["color"].stringValue)
        s_line.backgroundColor = UIColor(demoData[rune]["color"].stringValue)
        
        
        
        // change level 1 runes
        for i in 0...s_1_button.count - 1{
            let increase = 0
            s_1_button[i].setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][i + increase]["stone_id"].stringValue), for: .normal)
            s_r_1_view[i].borderColor = UIColor(demoData[rune]["color"].stringValue)
        }
        
        s_r_1_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        s_r_1_title.isHidden = true
        s_r_1_why.isHidden = true
        s_1_stack.isHidden = false
        s_1_textView.isHidden = true
        s_1_textView.text = "Why did you pick this rune ?"
        s_r_1_image.setImage(UIImage(named:"grid-placeholder"), for: .normal)
        s_r_1_image.borderWidth = 2
        s_r_1_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        // change level 1 runes
        
        
        // change level 2 runes
        for i in 0...s_2_button.count - 1{
            let increase = 3
            s_2_button[i].setImage(UIImage(named:RunesData[selectedSecondaryRune]["keystones"][i + increase]["stone_id"].stringValue), for: .normal)
            s_r_2_view[i].borderColor = UIColor(demoData[rune]["color"].stringValue)
        }
        
        s_r_2_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        s_r_2_title.isHidden = true
        s_r_2_why.isHidden = true
        s_2_stack.isHidden = false
        s_2_textView.isHidden = true
        s_2_textView.text = "Why did you pick this rune ?"
        s_r_2_image.setImage(UIImage(named:"grid-placeholder"), for: .normal)
        s_r_2_image.borderWidth = 2
        s_r_2_image.borderColor = UIColor(demoData[rune]["color"].stringValue)
        // change level 2 runes
        
        

    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        changeMainRune(rune:selectedMainRune)
        changeSecondaryRune(rune: selectedSecondaryRune)
        
    }
    
    func setupLayout(){
        demoData.append(["name":"Precision","image":"8000","vfx":"vfx-p","subtitle":"Auto attacks","color":"#D29B58","border":"precision_border"])
        demoData.append(["name":"Domination","image":"8100","vfx":"vfx-d","subtitle":"Burst damage","color":"#CA5D69","border":"domination_border"])
        demoData.append(["name":"Sorcery","image":"8200","vfx":"vfx-s","subtitle":"Empowered abilities","color":"#9E6DF6","border":"sorcery_border"])
        demoData.append(["name":"Resolve","image":"8400","vfx":"vfx-r","subtitle":"Durability","color":"#52A64B","border":"resolve_border"])
        demoData.append(["name":"Inspiration","image":"8300","vfx":"vfx-i","subtitle":"Creative tools","color":"#689EB0","border":"inspiration_border"])
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
