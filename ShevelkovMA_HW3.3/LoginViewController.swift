//
//  ViewController.swift
//  ShevelkovMA_HW3.3
//
//  Created by Михаил Шевельков on 14.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
  
    private let user = "Misha"
    private let pasword = "Shevelkov"
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = user
    }
       
    @IBAction func logInButton() {
        if userNameTF.text != user || passwordTF.text != pasword {
            showAlert(title: "ERROR",
                      message: "Enter correct login and password")
               
            return
        }
    }
    
    @IBAction func forgotNAme() {
        showAlert(title: "Ooops", message: "Ваше имя Misha")
   }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Ooops", message: "Ваш пароль Shevelkov")
    }
    
    
}
 extension LoginViewController {
    private func showAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
    }
    
}
