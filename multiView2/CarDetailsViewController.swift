//
//  BMWViewController.swift
//  multiView2
//
//  Created by Pawel on 12.09.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

class CarDetailsViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var modelNameLabel: UILabel!
    @IBOutlet weak var modelImage: UIImageView!
    
    var carModel: CarModel! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelNameLabel.text = carModel.modelName
        modelImage.image = carModel.imageOfModel
    }
}
