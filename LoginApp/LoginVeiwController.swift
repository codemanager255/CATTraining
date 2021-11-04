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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameTextField.delegate = self
    }
    
    // both username and password shouuld be non empty and nil .
    // if username is "rbs"
    // if password is "12345"
    // than print login successfull , else print login failed
    
   @IBAction func loginButtonTapped(_ sender: Any) {
      
        guard let userName = userNameTextField.text,  let password = passwordTextField.text else {
            return
        }

        if userName == "rbs", password == "12345" {
           performSegue(withIdentifier:"showProductDetails", sender:nil)
        }else {
            performSegue(withIdentifier:"loginFailed", sender: nil)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginVeiwController:UITextFieldDelegate {
    

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool  {
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField)  {
        
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
    }

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool  {
        
        let specialChar = "@#$%^&*"
        if specialChar.contains(string) {
            return false
        }
        return true
    }

    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
    }

    
    func textFieldShouldClear(_ textField: UITextField) -> Bool  {
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
