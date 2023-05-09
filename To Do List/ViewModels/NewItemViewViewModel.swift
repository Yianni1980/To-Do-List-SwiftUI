//
//  NewItemViewViewModel.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewViewModel:ObservableObject {
    @Published var title = ""
    @Published  var dueDate = Date()
    @Published var showAlert = false
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        
        //get current userID
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        // create model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId,
                                   title: title,
                                   dueDate: dueDate.timeIntervalSince1970,
                                   createdDate: Date().timeIntervalSince1970,
                                   isDone: false)
        //Save model
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document("123")
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
            
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
        
    }
}
