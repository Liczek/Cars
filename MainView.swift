//
//  MainView.swift
//  multiView2
//
//  Created by Pawel on 12.09.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import Foundation
import UIKit


class MainView: UITableViewController {
    
    struct Dealer {
        var mark : String
        var models : [String]
        var imagesOfModels : [UIImage!]
        }
    var Dealers = [Dealer]()
    let Audi = "Audi"
    let BMW = "BMW"
    let marks = ["Audi", "BMW"]
    
    
    
    override func viewDidLoad() {
        
        Dealers = [Dealer(mark: "BMW", models: ["\(BMW) X1", "\(BMW) X5", "\(BMW) X7"],
                    imagesOfModels: [UIImage(named:"X1"), UIImage(named:"X1"), UIImage(named:"X1")]),
                   Dealer(mark: "Audi", models: ["\(Audi) A1", "\(Audi) A3", "\(Audi) A7"],
                    imagesOfModels: [UIImage(named:"A1"), UIImage(named:"A3"), UIImage(named:"A7")])]
    }
    
    
   
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return Dealers.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Dealers[section].mark
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Dealers[section].models.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MainCell")
        cell?.imageView!.image = Dealers[indexPath.section].imagesOfModels[indexPath.row]
        cell?.textLabel!.text = Dealers[indexPath.section].models[indexPath.row]
        cell?.selectionStyle = .None
        return cell!
    }
    
   override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    
    
    if Dealers[indexPath.section].mark == BMW{
        let bmwView = storyboard!.instantiateViewControllerWithIdentifier(BMW)
        self.navigationController?.pushViewController(bmwView, animated: true)
        //self.performSegueWithIdentifier("BMW", sender: indexPath)
    
        
    }
    else if Dealers[indexPath.section].mark == Audi{
        let audiView = storyboard?.instantiateViewControllerWithIdentifier(Audi)
        self.navigationController?.pushViewController(audiView!, animated: true)
        //self.performSegueWithIdentifier("Audi", sender: indexPath)
    }
    }
    
    
}