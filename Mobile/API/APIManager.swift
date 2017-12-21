//
//  APIManager.swift
//  Forge Wizard
//
//  Created by Ahmed Safadi on 12/17/17.
//  Copyright © 2017 Ahmed Safadi. All rights reserved.
//

import SwiftyJSON
import SwiftSpinner
import Alamofire

import Foundation

class APIManager {
    let baseURL = "http://elofight.com/build/public/index.php/"
    static let getGuides = "getGuides/"
    public static let instance = APIManager()
    func download(saveUrl:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
            let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            print(directoryURL)
            let file = directoryURL.appendingPathComponent(saveUrl, isDirectory: false)
            return (file, [.createIntermediateDirectories, .removePreviousFile])
        }
        let requestUrl : String = baseURL + APIManager.getGuides
        Alamofire.download(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, to: destination).responseJSON { response in
            switch response.result {
            case .success:
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
    }
    
}
