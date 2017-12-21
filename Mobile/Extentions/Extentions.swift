//
//  Extentions.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//


import Foundation
import SwiftyJSON
import UIKit
import AVFoundation

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


func secondsToHoursMinutesSeconds (seconds : Int) -> (Int, Int, Int) {
    return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
}



extension UserDefaults {
    // check for is first launch - only true on first invocation after app install, false on all further invocations
    // Note: Store this value in AppDelegate if you have multiple places where you are checking for this flag
    static func isFirstLaunch() -> Bool {
        let hasBeenLaunchedBeforeFlag = "hasBeenLaunchedBeforeFlag"
        let isFirstLaunch = !UserDefaults.standard.bool(forKey: hasBeenLaunchedBeforeFlag)
        if (isFirstLaunch) {
            UserDefaults.standard.set(true, forKey: hasBeenLaunchedBeforeFlag)
            UserDefaults.standard.synchronize()
        }
        return isFirstLaunch
    }
}

extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do {
            return try NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType:  NSAttributedString.DocumentType.html], documentAttributes: nil)
        } catch {
            return NSAttributedString()
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }}


func getBuildRuneColor(runeId:String) -> UIColor {
    
    if(runeId == "8000"){
        return UIColor("#D29B58")
    }
    else if(runeId == "8100"){
        return UIColor("#CA5D69")
    }
    else if(runeId == "8200"){
        return UIColor("#9E6DF6")
    }
    else if(runeId == "8400"){
        return UIColor("#52A64B")
    }
    else if(runeId == "8300"){
        return UIColor("#689EB0")
    }
    else{
        return UIColor("#000000")
    }
}




func getBuildRuneImage(runeId:String) -> String {
    if(runeId == "8000"){
        return "environment-constructed-2"
    }
    else if(runeId == "8100"){
        return "environment-constructed"
    }
    else if(runeId == "8200"){
        return "environment-constructed-4"
    }
    else if(runeId == "8400"){
        return "environment-constructed-3"
    }
    else if(runeId == "8300"){
        return "environment-constructed-1"
    }
    else{
        return "environment-constructed"
    }
}


func getThumbnailFrom(path: URL) -> UIImage? {
    
    do {
        
        let asset = AVURLAsset(url: path , options: nil)
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        imgGenerator.appliesPreferredTrackTransform = true
        let cgImage = try imgGenerator.copyCGImage(at: CMTimeMake(0, 1), actualTime: nil)
        let thumbnail = UIImage(cgImage: cgImage)
        
        return thumbnail
        
    } catch let error {
        
        print("*** Error generating thumbnail: \(error.localizedDescription)")
        return nil
        
    }
    
}

extension String {
    func stripExtension(_ extensionSeperator: Character = ".") -> String {
        let selfReversed = self.reversed()
        guard let extensionPosition = selfReversed.index(of: extensionSeperator) else {  return self  }
        return String(self[..<self.index(before: (extensionPosition.base.samePosition(in: self)!))])
    }
}


func generateUrl(name:String,placeHolder:String,type:String) -> URL{
    var url:URL!
    if(name != ""){
        url = URL(string: "http://www.elofight.com/riotapi4/" + type + "/" + name + ".png")
    }
    else{
        url = URL(string: "http://www.elofight.com/riotapi4/" + type + "/" + placeHolder + ".png")
    }
    return url
}


extension UIView {
    func capture() -> UIImage? {
        var image: UIImage?
        
        if #available(iOS 10.0, *) {
            let format = UIGraphicsImageRendererFormat()
            format.opaque = isOpaque
            let renderer = UIGraphicsImageRenderer(size: frame.size, format: format)
            image = renderer.image { context in
                drawHierarchy(in: frame, afterScreenUpdates: true)
            }
        } else {
            UIGraphicsBeginImageContextWithOptions(frame.size, isOpaque, UIScreen.main.scale)
            drawHierarchy(in: frame, afterScreenUpdates: true)
            image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        }
        
        return image
    }
}



extension UIViewController{
    
    func hideBackButton(){
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
