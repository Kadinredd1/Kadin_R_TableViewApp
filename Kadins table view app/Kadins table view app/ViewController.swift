//
//  ViewController.swift
//  Kadins table view app
//
//  Created by Kadin Redd on 8/3/20.
//  Copyright © 2020 Kadin Redd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let KadinsShoeCollection = ["Royal Toe Air Jordan 1s" , "Pure Money Jordan 4s", "Raptor Jordan 4s", "Chicago Air Jordan 1s", "Shattered Backboard Jordan 1s", "Bred Jordan 11s", "Dior Chuck Taylors","Adidas x Raf Simons Black Chrome Ozweego", "Nike Air Force 1 '13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return KadinsShoeCollection.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = KadinsShoeCollection[indexPath.row]
        
        return cell!
        
    
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectedItem = KadinsShoeCollection[indexPath.row]
    let alert = UIAlertController(title: "Nice, that's my kinda shoe", message: "\(selectedItem)",
        preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in})
    
    alert.addAction(okAction)
    
    self.present(alert, animated: true, completion: nil)

    }
}
