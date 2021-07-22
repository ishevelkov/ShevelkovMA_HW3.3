//
//  WelcomeViewController.swift
//  ShevelkovMA_HW3.3
//
//  Created by Михаил Шевельков on 14.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome,"
        
    
}

//    @IBAction func logOutButton() {
//        dismiss(animated: true)
//    }
}
