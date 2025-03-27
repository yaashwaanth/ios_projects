//
//  ViewController.swift
//  ThemeChangeApp
//
//  Created by G Yashwanth Sharma on 26/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textColor: UILabel!
    enum Theme{
        case red,yellow,blue
    }
    
    var activeTheme: Theme = .blue
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textColor.text = ""
        // Do any additional setup after loading the view.
        activeTheme = .blue
        changeTheme()
    }
    
    func changeTheme(){
        switch activeTheme {
        case .red:
            view.backgroundColor = UIColor.red
            textColor.text = "red"
        case .yellow:
            view.backgroundColor = UIColor.yellow
            textColor.text = "yellow"
        case .blue:
            view.backgroundColor = UIColor.blue
            textColor.text = "blue"
        }
    }
    
    @IBAction func blueButtonTab(_ sender: Any) {
        activeTheme = .blue
        changeTheme()
        
    }
    

    @IBAction func redButtonTab(_ sender: Any) {
        activeTheme = .red
        changeTheme()
    }
    
    @IBAction func yellowButtonTab(_ sender: Any) {
        activeTheme = .yellow
        changeTheme()
    }
}

