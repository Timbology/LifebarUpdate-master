////
////  ShelterFetch.swift
////  Lifebar
////
////  Created by Timbology on 23/05/2018.
////  Copyright © 2018 Timbology. All rights reserved.
////
//
//import Foundation
//import Firebase
//
//class ShelterFetch {
//    
//    static func observeShelterGrab(_ uid:String, completion: @escaping ((_ shelterGrab:ShelterGrab?)->())) {
//        let shelRef = Database.database().reference().child("shelter/name/\(uid)")
//        
//        shelRef.observe(.value, with: { snapshot in
//            var shelterGrab:ShelterGrab?
//            
//            if let dict = snapshot.value as? [String:Any],
//                let name = dict["name"] as? String,
//                let target = dict["target"] as? String,
//            
//                
//                let shelterGrab = ShelterGrab(uid: snapshot.key, name: name, target: target)
//            }
//            
//            completion(shelterGrab)
////        })
//    }
//    
//}
//
