//
//  User.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//

import Foundation

struct User:Codable {
    let id: String
    let name:String
    let email:String
    
    let joined:TimeInterval
    
}
