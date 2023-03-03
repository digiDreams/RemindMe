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
    
    // Showing our stored Apps
    @State private var showingAddScreen = false
    
    var checkDataBase: String {
        if thingsToComplete.count == 0 {
            return "zzZZzzZZZ c'est le calme plat ici."
        } else {
            return "Vous avez \(thingsToComplete.count) truc à faire, faign***e !"}
    }
    var body: some View {
        NavigationStack {
            VStack {
                Text(checkDataBase)
                /*
                 List(thingsToComplete) {thingToComplete in
                 Text(thingToComplete.title ?? "NC")
                 }
                 */
                // Button
                
                Button("New") {
                    
                    
                }.padding() // String(Image(systemName: "plus.circle.fill"))
            }.navigationTitle("RemindMe")
        }
    }
}

struct adsListView_Previews: PreviewProvider {
    static var previews: some View {
        adsListView()
    }
}
