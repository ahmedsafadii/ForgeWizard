//
//  Global.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/19/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import Foundation
import SwiftyJSON
import Reachability

class Global {
    
    static let shared = Global()
    var ChampionsData = JSON()
    var SelectedChampionBuild:JSON!
    var SelectedBuild:JSON!
    var SelectedRune:JSON!
    var SelectedRuneStyle:JSON!
    var SelectedPatch:JSON!
    var RuneData:JSON!
    var RunesColors = [[String]]()
    var summonerData:JSON!
    func updateAppData(TimeByMin:Int) -> Bool{
        let old =  UserDefaults.standard.integer(forKey: "updateTimer")
        let current = Int(Date().timeIntervalSince1970)
        let defernce_time = current - old
        let (_,m,_) = secondsToHoursMinutesSeconds(seconds: defernce_time)
        print(old,current,m,TimeByMin)
        if(old <= 0){
            return true
        }
        else if(m >= TimeByMin){
            return true
        }
        else{
            return false
        }
    }
    
    let regions = [["name":"Brazil","key":"br"],
                   ["name":"Europe Nordic & East","key":"eune"],
                   ["name":"Europe West","key":"euw"],
                   ["name":"Latin America North","key":"lan"],
                   ["name":"Latin America South","key":"las"],
                   ["name":"North America","key":"na"],
                   ["name":"Oceania","key":"oce"],
                   ["name":"Russia","key":"ru"],
                   ["name":"Turkey","key":"tr"],
                   ["name":"Japan","key":"jp"]]
    
    
    
    
}
