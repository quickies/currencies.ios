//
//  Service.swift
//  Currencies
//
//  Created by Beat Besmer on 11.12.16.
//  Copyright © 2016 b-labs. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit
import CoreData

class Service: NSObject {
    
    let manager = Alamofire.SessionManager()
    let baseURL: String
    
    init(baseURL: String){
        self.baseURL = baseURL
    }
    
    func loadNames() -> Promise<[String: String]>{
        return Promise { fullfill, reject in
            manager.request(Config.currencyNamesURL).responseJSON(){ (response) in
                switch response.result{
                case .success(let value):
                    
                    if let dict = value as? [String: String]{
                        fullfill(dict)
                    } else {
                        reject(NSError(domain: "Could not parse", code: 999, userInfo: nil))
                    }
                    
                case .failure(let e):
                    reject(e)
                }
            }
        }
    }
    
    func loadCurrencies(context: NSManagedObjectContext) -> Promise<[Currency]>{

        return firstly{
            loadNames()
        }.then{ names in
            return Promise { fullfill, reject in
                self.manager.request(Config.serviceURL).responseJSON(){ (response) in
                    switch response.result{
                    case .success(let value):
                        
                        if let dict = value as? [String: Any], let v = dict["rates"] as? [String: NSNumber]{
                            fullfill(Currency.mapFromJSON(json: v, names: names, context: context))
                        } else {
                            reject(NSError(domain: "Data invalid", code: 999, userInfo: nil))
                        }
                    case .failure(let e):
                        reject(e)
                    }
                }
            }
        }
    }
}

extension Currency{
    
    static func mapFromJSON(json: [String: NSNumber], names: [String: String], context: NSManagedObjectContext) -> [Currency]{
        
        var result = [Currency]()
        for (key, value) in json {
            let c = Currency(context: context)
            c.code = key
            c.rate = value.floatValue
            c.title = names[c.code!]
            result.append(c)
        }
        return result
    }
    
}
    
