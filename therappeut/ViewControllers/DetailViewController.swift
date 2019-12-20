//
//  DetailViewController.swift
//  therappeut
//
//  Created by Patrick Mondani on 18.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var regionLabel: UILabel!
    
    var termin: Termin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let termin = termin{
            regionLabel.text = termin.region
        }
    }
}
