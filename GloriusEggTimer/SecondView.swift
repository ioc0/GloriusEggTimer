//
//  SecondView.swift
//  GloriusEggTimer
//
//  Created by ioc0 on 20.07.17.
//  Copyright © 2017 web-wizards. All rights reserved.
//

import Foundation
import UIKit

class SecondView: UIViewController {
    
    @IBOutlet weak var lblView2Text: UITextField!
    
    @IBAction func btnSave(_ sender: UIButton) {
        
        if(!(lblView2Text.text?.isEmpty)!)
        {
            UserDefaults.standard.set(Int(lblView2Text.text!), forKey: "data")
            
            print("not empty")
        }else
        {
            print("empty")
        }
    }
    @IBAction func btnBack(_ sender: UIBarButtonItem) {
       
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("suprise Mother FUCKER")
    }
    //Это модуль для клавиатуры
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
