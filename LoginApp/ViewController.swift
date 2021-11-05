//
//  ViewController.swift
//  LoginApp
//
//  Created by MAC on 29/10/21.
//


// Learning more about UI components like UIlabel , UIButton. UITextField
// Connectiong UI elements to Controller
// SceneDelegate Lifecycle.
// Protocol Delegate pattern.
// TableView
// GIT Branching .
// Scope of variables.


///
// Optional functions in protocols
// Extension
// Implementing protocols of UITextfield
// Tableview
// GIT Branching
// Question answers session.
// 1*1 call.



// Custom TablView Cell
// NavigatonController -> Stack
// Navigation b/w different controllers, show and showDetials
// Segues/ unwinding
// ViewController Life cycle
// Assignment.

// CAT7

// Integrating data from array of Models in tableview
//  Vertical and Horizontal stack views.
//   passing data from one controller to other controller
//  Introduction to MVC architecture
//  Introduction REST API Calls - webservics

// MVC
// MVVM
// MVVMC
// MVP
// VIPER
// RIBs


// M - Modal - > structs
// V - View    -> UIView
// C - Controller -> UIViewController


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var hello: UILabel!
    
    var names = Array<String>()
    var employess = Array<Employee>()

    var helloWorld:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let hasUserPermissions = true
        
        guard hasUserPermissions == true else { return }
        
        
        names.append("mahesh")
        names.append("david")
        names.append("suman")

        names.firstLetterCapital()
        
        employess.firstLetterCapital()
        
        names.reverse()
        hello.text = "Hello Team"
        
        userName.text = "Hello Swift"
        
        
        let c1 = Company(companyName:"TAE")

        c1.doOperations()
    }

    func doSomething() {
        
    }

    
    
  
    
    
}


class Employee {
    var name:String
  
     weak var delegate:CompanyFeedback?
    
    init(name:String, company:Company) {
        self.name = name
        self.delegate = company
    }
    
    func doWork() {
    //    print("\(name) doing work")
    }
    
    func takeLunch() {
       // print("\(name) having lunch")
    }
    
    func sahreFeedback() {
        
        if let _delegate = delegate {
            _delegate.sahreFeedback(message:"message from \(name)")
            _delegate.shareProjectFeedback(message:"I am Project feedback")
        }
      
    }
}


extension Array {
    func firstLetterCapital() {
        
    }
}

protocol CompanyFeedback:AnyObject {
    func sahreFeedback(message:String)
    func shareProjectFeedback(message:String)
}

extension CompanyFeedback {
    func sahreFeedback(message:String) {
        
    }
}

protocol ProcessPayment {
    func payment(for emloyee:Employee)
}

class Company {
    let companyName:String
     var e1:Employee?

    init(companyName:String) {
        self.companyName = companyName
        e1 = Employee(name:"Kiran", company: self)
    }
    func doOperations()  {
        e1?.doWork()
        e1?.takeLunch()
        e1?.sahreFeedback()
    }
}

extension Company:CompanyFeedback {
    func shareProjectFeedback(message: String) {
        
    }
    
    func sahreFeedback(message: String) {
        
    }
}

extension Company : ProcessPayment {
    func payment(for emloyee: Employee) {
        
    }
}


// Company has employee object
// employee has compnay object

// Retain Cycle -> Memory leak


// Create UI using Storybaord or Xibs
// Create UI using programtically
// Create UI using SwiftUI



