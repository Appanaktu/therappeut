//
//  ViewController.swift
//  therappeut
//
//  Created by Patrick Mondani on 07.11.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var clicked = 0
    
    @IBOutlet weak var textFeld: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        clicked+=1
        textFeld.text? = String(clicked)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFeld.text? = String(clicked)
    }
    
}

