//
//  ViewController.swift
//  TestMarch15
//
//  Created by Consultant on 3/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    private let secondVC = "secondVC"
    private let validation:ValidationService
    private let dummyUser = [User(username: "admin", password: "password")]
    
    init (validation: ValidationService) {
        self.validation = validation
        super.init(nibName: nil, bundle: nil)
        
    }
    required init?(coder: NSCoder){
        self.validation = ValidationService()
        super.init(coder: coder)
    }
    
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        
        
        
        
        // Do any additional setup after loading the view.
    }


    @IBAction func login(_ sender: Any) {
        do {
            let username = try validation.validateUserName(usernameTextField.text)
            let password = try validation.validatePassword(passwordTextField.text)
            
            if usernameTextField.text == username && passwordTextField.text == password {
                navigateNext()
            }
        }
        catch {
            print(error)
        }
        
        
    }
    
    private func navigateNext(){
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: secondVC) as! SecondViewController
        
        self.navigationController?.pushViewController(homeVC, animated: true)
        
        
    }
    
    
}

