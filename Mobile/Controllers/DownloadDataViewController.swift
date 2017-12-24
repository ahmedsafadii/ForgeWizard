//
//  DownloadDataViewController.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import UIKit
import SwiftSpinner
import Alamofire
import SwiftyJSON

class DownloadDataViewController: UIViewController {
    
    var progress = 0.0
    func DownloadDataFromInternet(){
        progress = 0.0
        SwiftSpinner.setTitleColor(UIColor.white)
        SwiftSpinner.sharedInstance.innerColor = nil
        SwiftSpinner.show(progress: progress, title: "Downloading \n 0%")
        APIManager.instance.downloadGuide(fileName: "LocalData.json", onSuccess: { json in
            
            APIManager.instance.getLatestRunes(fileName: "Runes.json", onSuccess: { json in
                
                Global.shared.RuneData = JSON(json)
                Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.timerFire), userInfo: nil, repeats: true)
                
            }, onFailure: { error in
                SwiftSpinner.show("Downloading Data Faild", animated: false).addTapHandler({
                    self.DownloadDataFromInternet()
                }, subtitle: "Tap to retry the download process")
            })

        }, onFailure: { error in
            if(fileExist(fileName: "Runes.json") && fileExist(fileName: "LocalData.json")){
                delay(seconds: 0.00001, completion: {
                    SwiftSpinner.show(duration: 1.0, title: "Loading offline data")
                })
                delay(seconds: 1.0, completion: {
                    self.performSegue(withIdentifier: "showPage", sender: self)
                })
            }
            else{
                SwiftSpinner.show("Downloading Data Faild", animated: false).addTapHandler({
                    self.DownloadDataFromInternet()
                }, subtitle: "Tap to retry the download process")
            }
        })
    }
    
    @objc func timerFire(_ timer: Timer) {
        progress += (timer.timeInterval/5)
        SwiftSpinner.show(progress: progress, title: "Downloading \n \(Int(progress * 100))%")
        if progress >= 1 {
            timer.invalidate()
            SwiftSpinner.show(duration: 1.0, title: "Complete!", animated: false)
            delay(seconds: 1.0, completion: {
                self.performSegue(withIdentifier: "showPage", sender: self)
            })
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let old =  UserDefaults.standard.integer(forKey: "updateTimer")
        print(old)
        if(Global.shared.updateAppData(TimeByMin: 10080)){
            self.DownloadDataFromInternet()
        }
        else{
            delay(seconds: 0.00001, completion: {
                SwiftSpinner.show(duration: 1.0, title: "Loading offline Data")
            })
            delay(seconds: 1.0, completion: {
                self.performSegue(withIdentifier: "showPage", sender: self)
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
