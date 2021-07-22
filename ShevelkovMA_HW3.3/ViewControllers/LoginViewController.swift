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
    private let user = User.getUserData()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewConrollers = tabBarController.viewControllers else {return}
        
        viewConrollers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
            }
        }

    }
        
    // MARK: - IBAction
    @IBAction func logInButton() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(title: "ERROR",
                      message: "Enter correct login and password")
            
            return
        }
    }
    
    @IBAction func forgotNAme() {
        showAlert(title: "Ooops", message: "Your name is \(user.login)😛")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Ooops", message: "Your password is \(user.password)😀")
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


