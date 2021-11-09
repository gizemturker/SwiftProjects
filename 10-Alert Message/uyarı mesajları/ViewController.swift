//
//  ViewController.swift
//  uyarı mesajları
//
//  Created by Konpyūtā on 5.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupTiklandi(_ sender: Any) {
        
        if emailTextField.text == "" {
            
           alertOlustur(titleGirdisi: "hata", mesajGirdisi: "email eksik")
            }
            
            
            
      else if passwordTextField.text == "" {
            
            alertOlustur(titleGirdisi: "hata!", mesajGirdisi: "paralo yanlış")
            
            
        } else if passwordTextField.text != passwordTextField.text {
            
           alertOlustur(titleGirdisi: "hata!", mesajGirdisi: "paralolar eşleşmiyor")
            
        }else {
        
         alertOlustur(titleGirdisi: "Tebrikler", mesajGirdisi: "Kullanıcı oluşturuldu")
            }
         
        
        
    }
    
        func alertOlustur(titleGirdisi:String, mesajGirdisi:String){
            
            let uyariMesaji = UIAlertController(title: titleGirdisi, message: mesajGirdisi, preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { UIAlertAction in
                print("ok button tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            
            self.present(uyariMesaji, animated: true, completion: nil)
            
        
        }
}
    
    

    
