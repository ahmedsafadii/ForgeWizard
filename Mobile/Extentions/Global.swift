//
//  Global.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/19/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import Foundation
import SwiftyJSON



class Global {
    
    static let shared = Global()
    var ChampionsData = JSON()
    var SelectedChampionBuild:JSON!
    var SelectedBuild:JSON!
    var SelectedRune:JSON!
    var SelectedRuneStyle:JSON!
    var SelectedPatch:JSON!
    var RunesColors = [[String]]()

    func updateAppData(TimeByMin:Int) -> Bool{
        let old =  UserDefaults.standard.integer(forKey: "updateTimer")
        let current = Int(Date().timeIntervalSince1970)
        let defernce_time = current - old
        let (_,m,_) = secondsToHoursMinutesSeconds(seconds: defernce_time)
        print(defernce_time)
        print(TimeByMin)
        if(m >= TimeByMin){
            UserDefaults.standard.set(current, forKey: "updateTimer")
            return true
        }
        else{
            return false
        }
    }
    
    
}
