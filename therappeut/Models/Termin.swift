//
//  Termin.swift
//  therappeut
//
//  Created by Patrick Mondani on 11.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import Foundation

struct Termin {
    
    var therapie: String
    var region: String
    
    static let exampleTermine = [
    Termin(therapie: "Massage", region: "Schierstein"),
    Termin(therapie: "Reha", region: "Nordenstadt"),
    Termin(therapie: "Massage", region: "Frankfurt")
    ]
}
