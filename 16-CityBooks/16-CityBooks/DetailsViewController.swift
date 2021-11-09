//
//  DetailsViewController.swift
//  16-CityBooks
//
//  Created by Konpyūtā on 9.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var regionNameLabel: UILabel!
    
    var chooseCity : City?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityNameLabel.text = chooseCity?.name
        regionNameLabel.text = chooseCity?.region
        imageView.image = chooseCity?.image
    }
    

 

}
