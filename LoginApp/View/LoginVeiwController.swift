//
//  LoginVeiwController.swift
//  LoginApp
//
//  Created by MAC on 29/10/21.
//

import UIKit

class LoginVeiwController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    
    let loginPresenter = LoginPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameTextField.delegate = self
        

    }
    

   @IBAction func loginButtonTapped(_ sender: Any) {
       
       loginPresenter.login(userName: userNameTextField.text, password: passwordTextField.text) { value in
           
           loginUpdate(isLoginSuccessfull: value)
       }
    }
    
    func loginUpdate(isLoginSuccessfull: Bool) {
        if isLoginSuccessfull {
            performSegue(withIdentifier:"showProductDetails", sender:nil)
        }else {
            performSegue(withIdentifier:"loginFailed", sender: nil)
        }
    }
}

extension LoginVeiwController:UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool  {
        
      return  loginPresenter.validateUserNameInput(name:string)
    }
}



