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
    
    @IBOutlet weak var minLabel: UILabel!
   
    @IBOutlet weak var secLabel: UILabel!
    
    @IBOutlet weak var minSlider: UISlider!
    
    @IBOutlet weak var secSlider: UISlider!
    
    @IBAction func minSliderAction(_ sender: Any) {
        
        minLabel.text = String(Int(minSlider.value))
    }
    
    @IBAction func secSliderAction(_ sender: Any) {
        secLabel.text = String(Int(secSlider.value))
    }
    
    @IBAction func btnSave(_ sender: UIButton) {
        let time = Int(minSlider.value) * 60 + Int(secSlider.value)
        UserDefaults.standard.set(time, forKey: "time")
        print(time)
    }
    @IBAction func btnBack(_ sender: UIBarButtonItem) {
       
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
