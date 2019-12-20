//
//  TherapieTableViewCell.swift
//  therappeut
//
//  Created by Patrick Mondani on 09.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

protocol TherapieCellDelegate{
    func detailButtonTapped(sender: TherapieTableViewCell)
}

class TherapieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var view: RoundedView!
    @IBOutlet weak var therapieLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var delegate: TherapieCellDelegate?
    var termin: Termin?
    
    func configure(for termin: Termin, delegate: TherapieCellDelegate) {
        therapieLabel.text = termin.therapie
        detailLabel.text = termin.region
        self.termin = termin
        self.delegate = delegate
    }
    @IBAction func buttonHandler(_ sender: Any) {
        delegate?.detailButtonTapped(sender: self)
    }
}
