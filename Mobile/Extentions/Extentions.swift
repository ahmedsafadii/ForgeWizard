//
//  Extentions.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//


import Foundation
import SwiftyJSON


func loadJson(fileName: String) -> JSON {
    
    var dataPath = JSON([])
    
    if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            dataPath = JSON(data)
        } catch {
            dataPath = JSON([])
        }
    }
    return dataPath
}

func delay(seconds: Double, completion: @escaping () -> ()) {
    let popTime = DispatchTime.now() + Double(Int64( Double(NSEC_PER_SEC) * seconds )) / Double(NSEC_PER_SEC)
    
    DispatchQueue.main.asyncAfter(deadline: popTime) {
        completion()
    }
}


func generateUrl(name:String,placeHolder:String) -> URL{
    var url:URL!
    if(name != ""){
        url = URL(string: name)
    }
    else{
        url = URL(string: "http://www.elofight.com/riotapi4/champions/" + placeHolder)
    }
    return url
}



