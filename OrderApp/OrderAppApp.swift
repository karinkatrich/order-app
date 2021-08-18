//
//  OrderAppApp.swift
//  OrderApp
//
//  Created by Karyna Katrich on 10.08.21.
//

import SwiftUI

@main
struct OrderAppApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(orderModel: OrderModel())
//                .environmentObject(UserPreferences())
            RootTabView()
                .environmentObject(UserPreferences())
        }
    }
}
