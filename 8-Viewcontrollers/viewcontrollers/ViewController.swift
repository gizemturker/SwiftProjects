//
//  ViewController.swift
//  viewcontrollers
//
//  Created by Konpyūtā on 4.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var kontrolettiklandi: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ikinciVC" {
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.
            // as onu şunun gibi kaydet ikinciviewkontroller gibi kaydet
            
        }
    }


}

