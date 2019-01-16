//
//  MainViewController.swift
//  DungeonsOfDoom
//
//  Created by Isain on 27/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var window1: UILabel!
    @IBOutlet weak var window2: UILabel!
    @IBOutlet weak var window3: UILabel!
    
    
    
    var titleWindow = "Main Menu"
    var windowsGame = ["Dungeon", "Inventory", "Shop"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cambio el nombre de la ventana a el nombre que se le asigne.
        mainTitle.text = titleWindow
        window1.text = windowsGame[0]
        window2.text = windowsGame[1]
        window3.text = windowsGame[2]
        
        
        
        // Do any additional setup after loading the view.
    }
    
    

    

}
