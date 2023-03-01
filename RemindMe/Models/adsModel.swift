//
//  adsModel.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import Foundation

struct thingsToDo {
    
    enum Category: String {
        case financial
        case cleaning
        case health
        case social
        
    }
    
    enum Priority: String {
        case low = "df"
        case medium = "sd"
        case high = "Prioritaire"
    }
    
    enum Status: String {
        case todo
        case complete
        case overdue
    }
    
    var id: UUID
    var title: String
    var date: Date // TimeWriting Date.now
    var category: Category // enum des cat
    var priority: Priority // enum des priorities
    var status: Status // enum Bool false by default e
}


/*
 struct TimeWriting {
 var id: UUID
 var now = Date.now
 }
 */
