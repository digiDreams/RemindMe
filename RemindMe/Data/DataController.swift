//
//  DataController.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
     let container = NSPersistentContainer(name: "RemindMe")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load. Here's more about: \(error.localizedDescription)")
            }
        }
    }
}
