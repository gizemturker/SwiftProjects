//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Konpyūtā on 7.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        photo.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        
        photo.addGestureRecognizer(gestureRecognizer)
    }
    @objc func gorselDegistir () {
        
        print("tiklandi")
        
        photo.image = UIImage(named: "Ankara")
        label.text = "Ankara"
    }

}

