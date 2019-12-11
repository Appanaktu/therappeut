//
//  RoundedView.swift
//  therappeut
//
//  Created by Patrick Mondani on 11.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit

class RoundedView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
