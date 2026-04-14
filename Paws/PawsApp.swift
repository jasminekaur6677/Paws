//
//  PawsApp.swift
//  Paws
//
//  Created by Jasmine Kaur on 12/04/26.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Pet.self)
        }
    }
}
