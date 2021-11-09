//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Konpyūtā on 9.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var superKahramanIsimleri = [String]()
    var superKahramanGorselIsimleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Iron Man")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Captan America")
        
        //var superKahramanGorselleri = [UIImage]()
        //superKahramanGorselleri.append(UIImage(named: "batman")!)
        
        
        superKahramanGorselIsimleri.append("batman")
        superKahramanGorselIsimleri.append("superman")
        superKahramanGorselIsimleri.append("ironman")
        superKahramanGorselIsimleri.append("spiderman")
        superKahramanGorselIsimleri.append("captanamerica")
        
   
        
    }
    
    //numberOfRowsInSection ---> kaç tane hücre olacak
    // cellForRow atIndexPath ---> hücrenin içinde neler gösterilecek
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            superKahramanIsimleri.remove(at: indexPath.row)
            superKahramanGorselIsimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahramanIsimleri[indexPath.row]
        secilenGorsel = superKahramanGorselIsimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            
            let destinationVC = segue.destination as! DetailsViewController
            
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorseli = secilenGorsel
        }
            
    }
}

