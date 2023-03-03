//
//  adsCreateView.swift
//  RemindMe
//
//  Created by Apprenant 16 on 03/03/2023.
//

import SwiftUI

struct adsCreateView: View {
    @Environment (\.managedObjectContext) var moc
    @Environment (\.dismiss) var dismiss
    
    @State private var getAdTitle = ""
    @State private var getAdContent = ""
    @State private var getAdDate = Date.now
    @State private var getAdNotify = Date.now
    @State private var getAdCategory = "" //: [Category]
    @State private var getAdPriority = "" //: [Priority]
    @State private var getAdStatus = "" //: [Status]
    
    let allCategories = ["Budget", "Ménage", "Santé", "Sorties", "Travaux"]//: [Category]
    let allPriorities = ["Urgent", "Modéré", "Peu attendre"] //: [Priority]
    let allStatus = ["A faire", "Terminé", "En retard"] //: [Status]
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    TextField("Truc relou à faire ?", text: $getAdTitle)
                    TextField("Détails/précisions sur le truc relou:", text: $getAdContent)
                    // TextEditor 
                }
                /* Section {
                 DatePicker(selection: $getAdDate, in ...Date.now, displayedComponents: .date)
                 Text("Deadline du truc relou:")
                 DatePicker(selection: $getAdNotify, in ...Date.now, displayedComponents: .date)
                 Text("Jour de rappel du truc relou:")
                 } */
                Section {
                    Picker("Type de tâche:", selection: $getAdCategory) {
                        ForEach(allCategories, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Degré d'urgence:", selection: $getAdPriority) {
                        ForEach(allPriorities, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Status:", selection: $getAdStatus) {
                        ForEach(allStatus, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section {
                    Button("Save") {
                        let newAd = Thingstodo(context: moc)
                        newAd.id = UUID()
                        newAd.content = getAdContent
                        // newAd.date = getAdDate
                        // newAd.notuser = getAdNotify
                        newAd.category = getAdCategory
                        newAd.priority = getAdPriority
                        newAd.status = getAdStatus
                        
                        try? moc.save()
                        dismiss()
                        
                    } .frame(maxWidth: 400, maxHeight: 400, alignment: .center)
                }
            }.navigationTitle("What ToDo today ?")
        }
    }
}

struct adsCreateView_Previews: PreviewProvider {
    static var previews: some View {
        adsCreateView()
    }
}
