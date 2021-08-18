//
//  PageTitleView.swift
//  OrderApp
//
//  Created by Karyna Katrich on 10.08.21.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrders: Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.light)
                .padding(.trailing)
            Spacer()
        }.overlay(
            Image(systemName: isDisplayingOrders ?? false ? "chevron.up.square":"chevron.down.square")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .padding()
            , alignment:  .leading

        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
    }
}

    struct PageTitleView_Previews: PreviewProvider {
        static var previews: some View {
            PageTitleView(title: "Order Pizza")
        }
    }
