//
//  SignInVC.swift
//  FoodOne
//
//  Created by Hassan Ahmed on 07/01/2019.
//  Copyright © 2019 Hassan Ahmed. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    static let storyboardName = "Main"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Sign In"
    }
        
    func validate() -> Bool {
        if email.text!.isEmpty || password.text!.isEmpty {
            return false
        }
        return true
    }
    
    @IBAction func signInTapped(sender: UIButton) {
        if validate() {
            if let vc = MealListingVC.instantiate() {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Please provide an email and password combination.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        //
    }
}
