//
//  FirebaseHelper.swift
//  therappeut
//
//  Created by Patrick Mondani on 11.12.19.
//  Copyright © 2019 patzimo. All rights reserved.
//

import UIKit
import FirebaseDatabase

enum FirebaseStrings {
    static let postDirectory = "posts"
}

enum FirebaseHelper {
    
    private static let databaseReference = Database.database().reference()
    static let postsReference = databaseReference.child(FirebaseStrings.postDirectory)
    
    private static func createEntry(from termin: Termin) -> Dictionary<String,AnyObject>{
        let terminData: Dictionary<String,AnyObject> = [
            "therapie": termin.therapie as AnyObject,
            "region": termin.region as AnyObject,
            "timeStamp": Date().timeIntervalSince1970 as AnyObject
        ]
        return terminData
    }
    
    static func saveDatabaseEntry(to directory: String, with termin: Termin, completion: @escaping (Bool)->()){
        
    }
    
    
    
}
