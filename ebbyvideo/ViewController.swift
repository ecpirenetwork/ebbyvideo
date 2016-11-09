//
//  ViewController.swift
//  ebbyvideo
//
//  Created by Ebby Jeddy on 09/11/2016.
//  Copyright © 2016 ecpirenetwork. All rights reserved.
//
//  This is a comment

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         //Call API
        let api = APIManager()
        api.loadData(urlString: "https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
    }
    
    func didLoadData(result:String) {
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) {
            action -> Void in // Sorry seems to be a mistake;
        }
    
    alert.addAction(okAction)
    self.present(alert, animated: true, completion: nil)
    }

}

