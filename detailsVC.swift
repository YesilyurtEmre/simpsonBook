//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Emre Yeşilyurt on 30.10.2022.
//

import UIKit

class detailsVC: UIViewController {
    

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedSimpson : Simpsons?
    
    override func viewDidLoad() {
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        super.viewDidLoad()

        
    }
    

   

}
