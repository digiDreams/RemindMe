//
//  adsListView.swift
//  RemindMe
//
//  Created by Apprenant 16 on 01/03/2023.
//

import SwiftUI

struct adsListView: View {
    @FetchRequest(sortDescriptors: []) var thingsToComplete: FetchedResults<Thingstodo>
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct adsListView_Previews: PreviewProvider {
    static var previews: some View {
        adsListView()
    }
}
