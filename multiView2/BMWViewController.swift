//
//  BMWViewController.swift
//  multiView2
//
//  Created by Pawel on 12.09.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

class BMWViewController: UIViewController {
    

    
    //MARK: Properties
    
    @IBOutlet weak var modelNameLabel: UILabel!
    @IBOutlet weak var modelImage: UIImageView!
    
    var modelName = String()
    var modelImage1 = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
