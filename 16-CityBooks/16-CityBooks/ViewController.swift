//
//  ViewController.swift
//  16-CityBooks
//
//  Created by Konpyūtā on 9.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var cityArray  = [City]()
    var userChoice : City?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let istanbul = City(name: "İstanbul", region: "Marmara", image: UIImage(named: "istanbul")!)
        
    
        let ankara = City(name: "Ankara", region: "İç Anadolu", image: UIImage(named: "ankara")!)
        
        let izmir = City(name: "İzmir", region: "Ege", image: UIImage(named: "izmir")!)
        
        let diyarbakir = City(name: "Diyarbakır", region: "Güneydoğu Anadolu", image: UIImage(named: "diyarbakir")!)
        
        let antalya = City(name: "Antalya", region: "Akdeniz", image: UIImage(named: "antalya")!)
        
        
        
        cityArray = [istanbul,ankara,izmir,diyarbakir,antalya]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        userChoice = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chooseCity = userChoice
            
        }
        
    }


    }
