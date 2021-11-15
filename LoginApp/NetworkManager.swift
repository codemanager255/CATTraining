//
//  NetworkManager.swift
//  LoginApp
//
//  Created by MAC on 15/11/21.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {
    }
    
    var token:Int = 3
    
    var count:Int = 5
    
    
    func addvalue() {
        token = token + 1
    }
    func showToken() {
        print(token)
        
       
    }
}
