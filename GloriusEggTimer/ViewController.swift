//
//  ViewController.swift
//  GloriusEggTimer
//
//  Created by ioc0 on 20.07.17.
//  Copyright © 2017 web-wizards. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    var timer = Timer()
    var te = UserDefaults.standard.integer(forKey: "time")
    @IBOutlet weak var lblText1: UILabel!
    
    @IBAction func btnPause(_ sender: UIBarButtonItem) {
       timer.invalidate()
        
    }
    
    @IBAction func btnReset(_ sender: Any) {
        timer.invalidate()
        te = UserDefaults.standard.integer(forKey: "time")
        lblText1.text = String(te)
        
    }
    @IBAction func btnPlay(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeBack), userInfo: nil, repeats: true)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(te == 0)
        {
            lblText1.text = "240"
        }else
        
        {
            lblText1.text = String(te)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    func timeBack()
    {
        if (te > 0){
        te -= 1
        lblText1.text = String(te)
        }
        else
        {
            timer.invalidate()
            lblText1.text = "Finished"
            AudioServicesPlaySystemSound(1025)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

