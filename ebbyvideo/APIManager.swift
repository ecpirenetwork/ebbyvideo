//
//  APIManager.swift
//  ebbyvideo
//
//  Created by Ebby Jeddy on 10/11/2016.
//  Copyright © 2016 ecpirenetwork. All rights reserved.
//

import Foundation


class APIManager {
    
    func loadData(urlString:String, completion: @escaping (_ result:String) -> Void) {
        
  
        let session = URLSession.shared
        let url = NSURL(string: urlString)!
        
        let task = session.dataTask(with: url as URL) {
            (data, response, error) -> Void in
            
            DispatchQueue.main.async {
                if error != nil {
                    completion((error!.localizedDescription))
                } else {
                    completion("URLSession successful")
                    print(data!)
                    
                }
            }
        }
        task.resume()
    
    }




}


