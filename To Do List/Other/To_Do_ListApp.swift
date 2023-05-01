//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//
import FirebaseCore
import SwiftUI

@main
struct To_Do_ListApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
