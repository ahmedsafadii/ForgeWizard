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


func generateUrl(name:String,placeHolder:String) -> URL{
    var url:URL!
    if(name != ""){
        url = URL(string: name)
    }
    else{
        url = URL(string: "http://www.elofight.com/riotapi4/champions/" + placeHolder)
    }
    print("URL IS ",url)
    return url
}



