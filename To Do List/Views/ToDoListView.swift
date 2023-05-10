//
//  ToDoListItemsView.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items:[ToDoListItem]
    init(userId:String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack{
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button(role: .destructive) {
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                            }

//                            Button("Delete") {
//                                viewModel.delete(id: item.id)
//                            }
//
//                            .foregroundColor(Color.red)

                        }
                    
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView( newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "ADkSmj4o46MTCJ9PQ4TGqI9P3P22")
    }
}
