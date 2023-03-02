//
//  adsListView.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import SwiftUI

struct adsListView: View {
    
    // Access the managed object context from SwiftUI environment.
    
    @Environment(\.managedObjectContext) var moc
    
    // FetchRequest looks in the environment (the current managed objet context) and use it for its loading and saving. Didn't have to say load and save.
    
    @FetchRequest(sortDescriptors: []) var thingsToComplete: FetchedResults<Thingstodo>
    
  
    
    // Optional in Core Data and Swift have same name, but conceptually totally different.
    
    var body: some View {
        VStack {
            List(thingsToComplete) {thingToComplete in
                Text(thingToComplete.title ?? "NC")
            }
            
            Button("Ajouter") {
                
                // Instancier des données fictives
                
                let someAdsTitles = ["Pharmacie", "Courses", "Ménage", "Soirée", "RDV ORL"]
                let someAdsContents = ["Faire le lit", "Acheter trois packs de 1664", "3 boîtes d'Immodium", "Faire MAJ de carte vitale"]
                let someAdsDates = [Date.distantFuture, Date.now, Date.distantPast]
                let someAdsNotifications = [Date.distantFuture]
                let someAdsCategories = ["Etudes/travail", "Santé", "Quotidien", "Médical", "Loisirs"]
                let someAdsPriorities = ["high", "medium", "low"]
                let someAdsStatus = ["A faire", "Terminé", "En retard"]
                
                // Element au hasard
                
                let chosenAdsTitle = someAdsTitles.randomElement() ?? "rawTitle"
                let chosenAdsContent =  someAdsContents.randomElement() ?? "rawContent"
                let chosenAdsDate = someAdsDates.randomElement()
                let chosenAdsCategory = someAdsCategories.randomElement() ?? "raw Category"
                let chosenAdsPriority = someAdsPriorities.randomElement() ?? "rawPriority"
                let chosenAdsStatus = someAdsStatus.randomElement() ?? "raw Status"
                
                let thingToComplete = Thingstodo(context: moc)
                thingToComplete.id = UUID()
                thingToComplete.title = "\(chosenAdsTitle)"
                thingToComplete.date = chosenAdsDate
                thingToComplete.category = "\(chosenAdsCategory)"
                thingToComplete.priority = "\(chosenAdsPriority)"
                thingToComplete.status = "\(chosenAdsStatus)"
                
                try? moc.save()
                
            }
        }
    }
}

struct adsListView_Previews: PreviewProvider {
    static var previews: some View {
        adsListView()
    }
}
