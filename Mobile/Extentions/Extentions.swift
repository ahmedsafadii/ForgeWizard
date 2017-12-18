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
