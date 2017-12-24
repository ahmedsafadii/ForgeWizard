//
//  UserDefaults.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/22/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class UserDefaultsData {
    
    
    func setObject(value:JSON ,key:String){
        let pref = UserDefaults.standard
        pref.set(value.rawString(), forKey: key)
        pref.synchronize()
    }
    
    func getObject(key:String) -> JSON{
        let pref = UserDefaults.standard
        let string = pref.value(forKey: key) as! String
        do {
            let dataFromString = string.data(using: String.Encoding.utf8, allowLossyConversion: false)
            return try JSON(data: dataFromString!)
        } catch {
            return JSON([])
        }
        
    }
    
    func checkObject(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
    
    func removeObject(key:String){
        return UserDefaults.standard.removeObject(forKey:key)
    }
    
}

