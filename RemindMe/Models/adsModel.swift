//
//  adsModel.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import Foundation

struct Hastobedone {
    var id: UUID
    var title: String
    var date: Date // TimeWriting Date.now
    var category: String // enum des cat
    var priority: String // enum des priorities
    var status: String // enum Bool false by default e
}

enum Categories {
    case financial
    case cleaning
    case health
    case social
    
}

enum Priorities {
    case low
    case medium
    case high
}

enum Status {
    case todo
    case complete
    case overdue
}
/*
struct TimeWriting {
    var id: UUID
    var now = Date.now
}
*/
