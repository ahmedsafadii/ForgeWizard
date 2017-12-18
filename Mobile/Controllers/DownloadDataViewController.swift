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

class DownloadDataViewController: UIViewController {
    
    var progress = 0.0
    func DownloadDataFromInternet(){
        SwiftSpinner.setTitleColor(UIColor.white)
        SwiftSpinner.sharedInstance.innerColor = nil
        SwiftSpinner.show(progress: progress, title: "Downloading \n 0%")
        APIManager.instance.download(downloadUrl: "http://elofight.com/build/public/index.php/getGuides/", saveUrl: "LocalData.json", onSuccess: { json in
            Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.timerFire), userInfo: nil, repeats: true)
        }, onFailure: { error in
            print(error)
            SwiftSpinner.show("Downloading Data Faild", animated: false).addTapHandler({
                self.DownloadDataFromInternet()
            }, subtitle: "Tap to retry the download process")
        })
    }
    
    @objc func timerFire(_ timer: Timer) {
//        progress += (timer.timeInterval/5)
        progress += (timer.timeInterval/1)
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
        delay(seconds: 0.1, completion: {
            self.DownloadDataFromInternet()
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
