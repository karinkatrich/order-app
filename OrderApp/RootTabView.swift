//
//  RootTabView.swift
//  OrderApp
//
//  Created by Karyna Katrich on 18.08.21.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView().environmentObject(UserPreferences())
    }
}
