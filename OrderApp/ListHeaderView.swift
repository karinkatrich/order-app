//
//  ListHeaderView.swift
//  OrderApp
//
//  Created by Karyna Katrich on 10.08.21.
//

import SwiftUI

struct ListHeaderView: View {
    var text: String
    var body: some View {
        HStack {
            Text("Menu")
                .padding(.leading , 5)
                .foregroundColor(Color("G2"))
            Spacer()
        } .background(Color("G4"))
    }
}


struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(text: "Menu")
    }
}
