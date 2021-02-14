//
//  CoreDataTestsApp.swift
//  Shared
//
//  Created by Sam DuBois on 2/14/21.
//

import SwiftUI

@main
struct CoreDataTestsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
