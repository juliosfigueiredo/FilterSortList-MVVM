//
//  DesafioFilterSortApp.swift
//  DesafioFilterSort
//
//  Created by Julio Figueiredo on 07/05/22.
//

import SwiftUI

@main
struct DesafioFilterSortApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
