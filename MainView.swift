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
    
    var Dealers = [CarManufacture]()
    
    override func viewDidLoad() {
        
        let bmw = CarManufacture()
        bmw.mark = "BMW";
        
        let x1 = CarModel()
        x1.modelName = "X1"
        x1.imageOfModel = UIImage(named:"X1")

        let x5 = CarModel()
        x5.modelName = "X5"
        x5.imageOfModel = UIImage(named:"X1")
        
        let x7 = CarModel()
        x7.modelName = "X7"
        x7.imageOfModel = UIImage(named:"X1")
        
        bmw.models = [x1, x5, x7]
        
        let audi = CarManufacture()
        audi.mark = "Audi"
        
        let a1 = CarModel()
        a1.modelName = "A1"
        a1.imageOfModel = UIImage(named:"A1")

        let a3 = CarModel()
        a3.modelName = "A3"
        a3.imageOfModel = UIImage(named:"A3")
        
        let a7 = CarModel()
        a7.modelName = "A7"
        a7.imageOfModel = UIImage(named:"A7")

        audi.models = [a1, a3, a7]

        Dealers = [bmw, audi]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "FromMainViewControllerToCarDetailsViewController" {
            let carDetailsViewController = segue.destinationViewController as! CarDetailsViewController
            carDetailsViewController.carModel = sender as! CarModel
        }
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
        let dealer = Dealers[indexPath.section]
        let model = dealer.models[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MainCell")
        cell?.imageView!.image = model.imageOfModel
        cell?.textLabel!.text = model.modelName

        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let dealer = Dealers[indexPath.section]
        
        self.performSegueWithIdentifier("FromMainViewControllerToCarDetailsViewController", sender: dealer.models[indexPath.row])
    }
    
}