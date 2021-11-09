//
//  DetailsViewController.swift
//  SuperKahramanKitabi
//
//  Created by Konpyūtā on 9.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var secilenKahramanIsmi = ""
    var secilenKahramanGorseli = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: secilenKahramanGorseli)
        label.text = secilenKahramanIsmi
    }
    

}
