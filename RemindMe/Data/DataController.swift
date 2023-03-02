//
//  DataController.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import CoreData
import Foundation

/* Etape 1: we made our entity (in data model file "RemindMe") --> CoreData makes
a class for us (inherits from a parent class: NSManagedObject, not visible by default, made for us automatically).
 --> Called "Managed Object" coz CoreData is responsible for looking after them it loads them from persistent store, write changes back to us.
 --> All these managed objects live inside a managed object context.
 */
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
