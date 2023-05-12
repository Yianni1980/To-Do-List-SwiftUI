//
//  ToDoListItem.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//

import Foundation

struct ToDoListItem:Codable,Identifiable {
    let id:String
    let title:String
    let dueDate:TimeInterval
    let createdDate:TimeInterval
    var isDone:Bool
    
    mutating func setDone(_ state:Bool) {
        print(state)
        isDone = state
        
    }
    
}
