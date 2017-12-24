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
    
    let baseURL = "http://elofight.com/forge/public/index.php/v1/"
    static let getGuides = "build/getBuilds/"
    static let getRunes = "runes/getRunes/"
    static let getPatches = "patch/getPatches"
    static let getBuildByChampionId = "build/getBuilds/champion/"
    static let postNewUser = "summoner/verify"
    static let getBuildById = "build/getBuilds/user/"
    static let createBuild = "build/addBuild/"

    
    public static let instance = APIManager()
    
    
    
    func createNewBuild(title:String,desc:String,stone_why:String,top_player_id:Int,champion_id:Int,role_id:Int,patch_id:Int,rune_main_id:Int,rune_secondary_id:Int,keystones:String,userId:Int,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void) {
        
        let requestUrl : String = baseURL + APIManager.createBuild
        let parameters = ["userId":userId,"title":title,"desc":desc,"keystones":keystones,"rune_secondary_id":rune_secondary_id,"rune_main_id":rune_main_id,"patch_id":patch_id,"role_id":role_id,"champion_id":champion_id,"top_player_id":top_player_id,"stone_why":stone_why] as [String : Any]
        print(parameters)
        print(requestUrl)
        Alamofire.request(requestUrl, method: .post, parameters: parameters).responseJSON { response in
            switch response.result {
            case .success:
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
        
    }
    
    func getUserData(id:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        
        let requestUrl : String = baseURL + APIManager.getBuildById + id
        print(requestUrl)
        Alamofire.request(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success:
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
        
    }
    
    
    
    func registerSummoner(name:String,region:String,code:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        
        let requestUrl : String = baseURL + APIManager.postNewUser
        let parameters = ["name":name,"region":region,"code":code]
        Alamofire.request(requestUrl, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success:
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
        
    }
    
    
    
    func getChampionData(id:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        
        let requestUrl : String = baseURL + APIManager.getBuildByChampionId + id
        Alamofire.request(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success:
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
        
    }
    
    
    func downloadPatches(fileName:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        
        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
            let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            print(directoryURL)
            let file = directoryURL.appendingPathComponent(fileName, isDirectory: false)
            return (file, [.createIntermediateDirectories, .removePreviousFile])
        }
        let requestUrl : String = baseURL + APIManager.getPatches
        Alamofire.download(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, to: destination).responseJSON { response in
            switch response.result {
            case .success:
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
    }
    
    
    
    func getLatestRunes(fileName:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        
        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
            let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let file = directoryURL.appendingPathComponent(fileName, isDirectory: false)
            let current = Int(Date().timeIntervalSince1970)
            UserDefaults.standard.set(current, forKey: "updateTimer")
            return (file, [.createIntermediateDirectories, .removePreviousFile])
            
        }
        
        let requestUrl : String = baseURL + APIManager.getRunes
        Alamofire.download(requestUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, to: destination).responseJSON { response in
            switch response.result {
            case .success:
                print(JSON(response.result.value!))
                onSuccess(JSON(response.result.value!))
            case .failure(let error):
                onFailure(error)
            }
        }
    }
    
    func downloadGuide(fileName:String,onSuccess: @escaping(JSON) -> Void,onFailure: @escaping(Error) -> Void){
        
        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
            let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let file = directoryURL.appendingPathComponent(fileName, isDirectory: false)
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
