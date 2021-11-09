//
//  ViewController.swift
//  LayoutProject
//
//  Created by Konpyūtā on 2.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size
        let height = view.frame.size
        
        let myLabel = UILabel()
        myLabel.text = "test label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 20, y: 20, width: 200, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("benim butonum", for: UIControl.State.normal)
    }


}

