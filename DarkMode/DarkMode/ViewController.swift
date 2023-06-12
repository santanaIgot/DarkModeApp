//
//  ViewController.swift
//  DarkMode
//
//  Created by Igor Santana on 11/05/23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var themeSwitch: UISwitch!
    let defaults = UserDefaults.standard
    let nightKey: String = "isNight"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let isNight = defaults.value(forKey: nightKey){
            if isNight as! Bool{
//                estamos pegando um valor para saber se ele é true
            }
        }
    }
//    caso for true chamaremos uma func
    @IBAction func switchFlipped(sender: Any){
        if themeSwitch.isOn{
            defaults.set(true, forKey: nightKey)
            switchToNight()
        }else{
            defaults.set(false, forKey: nightKey)
            switchToLight()
        }
    }
    func switchToNight(){
        themeSwitch.setOn(true, animated: false)
        overrideUserInterfaceStyle = .dark
    }
    func switchToLight(){
        themeSwitch.setOn(false, animated:false)
        overrideUserInterfaceStyle = .light
    }
    
  
}

