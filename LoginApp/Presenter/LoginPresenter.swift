//
//  LoginPresenter.swift
//  LoginApp
//
//  Created by MAC on 15/11/21.
//

import Foundation

protocol LoginProtocol:AnyObject {
    func loginUpdate(isLoginSuccessfull:Bool)
}

class LoginPresenter {
    
    weak var delegate:LoginProtocol?
    
    func login(userName:String?, password:String?, isLoginSuccess:(Bool)-> Void) {
        if loginValidation(userName: userName, password: password) {
            isLoginSuccess(true)
        }else {
            isLoginSuccess(false)
        }
    }
    
     func loginValidation(userName:String?, password:String?)-> Bool {
        
        guard let userName = userName,  let password = password else {
            return false
        }
        
        if userName == "rbs", password == "123456" {
            return true
        }
        return false
    }
    
    func validateUserNameInput(name:String)-> Bool {
        let specialChar = "@#$%^&*"
        if specialChar.contains(name) {
            return false
        }
        return true
    }
}
