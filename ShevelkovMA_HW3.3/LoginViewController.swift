//
//  ViewController.swift
//  ShevelkovMA_HW3.3
//
//  Created by Михаил Шевельков on 14.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = "Misha"
    private let pasword = "Shevelkov"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = user
    }
    
    // MARK: - IBAction
    @IBAction func logInButton() {
        if userNameTF.text != user || passwordTF.text != pasword {
            showAlert(title: "ERROR",
                      message: "Enter correct login and password")
            
            return
        }
    }
    
    @IBAction func forgotNAme() {
        showAlert(title: "Ooops", message: "Your name is \(user)😛")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Ooops", message: "Your password is \(pasword)😀")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default)
        passwordTF?.text = ""
        
        alert.addAction(okAction)
    }
    
}
