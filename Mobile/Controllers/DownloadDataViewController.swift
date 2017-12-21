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
        SwiftSpinner.setTitleColor(UIColor.white)
        SwiftSpinner.sharedInstance.innerColor = nil
        SwiftSpinner.show(progress: progress, title: "Downloading \n 0%")
        APIManager.instance.download(saveUrl: "LocalData.json", onSuccess: { json in
            Global.shared.ChampionsData = JSON(json)
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.timerFire), userInfo: nil, repeats: true)
        }, onFailure: { error in
            print(error)
            SwiftSpinner.show("Downloading Data Faild", animated: false).addTapHandler({
                self.DownloadDataFromInternet()
            }, subtitle: "Tap to retry the download process")
        })
    }
    
    @objc func timerFire(_ timer: Timer) {
        progress += (timer.timeInterval/2)
        SwiftSpinner.show(progress: progress, title: "Downloading \n \(Int(progress * 100))%")
        if progress >= 1 {
            timer.invalidate()
            SwiftSpinner.show(duration: 1.0, title: "Complete!", animated: false)
            delay(seconds: 1.0, completion: {
                self.performSegue(withIdentifier: "showPage", sender: self)
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(Global.shared.updateAppData(TimeByMin: 1)){
            delay(seconds: 0.1, completion: {
//                self.DownloadDataFromInternet()
                self.performSegue(withIdentifier: "showPage", sender: self)
            })
        }
        else{
            delay(seconds: 0.1, completion: {
                self.performSegue(withIdentifier: "showPage", sender: self)
            })
            print("nop")
        }
//
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
