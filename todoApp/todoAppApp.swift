//
//  todoAppApp.swift
//  todoApp
//
//  Created by kosuke.miyake on 2024/02/26.
//

import SwiftUI

@main
struct todoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
