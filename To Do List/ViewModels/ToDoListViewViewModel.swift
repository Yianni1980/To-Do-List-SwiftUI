//
//  ToDoListViewViewModel.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//
import FirebaseFirestore
import SwiftUI

///ViewModel for list of items view
///Primary tab
class ToDoListViewViewModel:ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId:String
    init(userId:String) {
        self.userId = userId
    }
    
    ///Delelte to do list item
    ///-Parameter id item id to delete
    func delete(id:String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
