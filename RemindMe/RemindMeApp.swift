//
//  RemindMeApp.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import SwiftUI

@main
struct RemindMeApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            adsListView()
            // Etape 2: Injecter les données dans l'app (load/change), dans l'environment (following code line). Asap as placed in environment, automatically used by SwiftUI.
                .environment(\.managedObjectContext, dataController.container.viewContext)
            // Maintenir à jour les manip de données: autre property wrapper
//                .fetchRequest
        }
    }
}
