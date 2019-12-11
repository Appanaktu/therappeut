//
//  TherapieTableViewCell.swift
//  therappeut
//
//  Created by Patrick Mondani on 09.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

class TherapieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var view: RoundedView!
    @IBOutlet weak var therapieLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    func configure(for termin: Termin) {
        therapieLabel.text = termin.therapie
        detailLabel.text = termin.region
    }
}
