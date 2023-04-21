//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Emre Yeşilyurt on 30.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let Homer = Simpsons(name: "Homer Simpson", job: "Nuclear safety", image: UIImage(named: "Homer")!)
        
        let marge = Simpsons(name: "Marge Simpson", job: "Teacher", image: UIImage(named: "marge")!)
        
        let bart = Simpsons(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart")!)
        
        let lisa = Simpsons(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        
        let maggie = Simpsons(name: "Maggie Simpson", job: "No Job", image: UIImage(named: "maggie")!)
        
        mySimpsons.append(Homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    
}


