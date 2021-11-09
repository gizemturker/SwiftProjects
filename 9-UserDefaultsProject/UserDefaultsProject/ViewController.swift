//
//  ViewController.swift
//  UserDefaultsProject
//
//  Created by Konpyūtā on 5.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let kaydedilenNot = UserDefaults.standard.objectIsForced(forKey: "not")
        
        let kaydedilenZaman = UserDefaults.standard.objectIsForced(forKey: "zaman")
        
        if let gelenNot = kaydedilenNot as? String{
            notLabel.text = "Yapılacak iş: \(gelenNot)"
        }
        
        if let gelenZaman = kaydedilenZaman as? String {
            zamanLabel.text = "Yapılacak zaman: \(gelenZaman)"
        }
    }

    @IBAction func kaydetTiklandi(_ sender: Any){
        
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = "Yapılacak iş: \(notTextField.text!)"
        zamanLabel.text = "Yapılacak zaman: \(zamanTextField.text!)"
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.objectIsForced(forKey: "not")
        notLabel.text = "Yapılacak İş: "
        
        if kaydedilenNot is String {
            UserDefaults.standard.removeObject(forKey: "not")
        }
    }
    
    
}

