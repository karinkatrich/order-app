//
//  OrderListView.swift
//  OrderApp
//
//  Created by Karyna Katrich on 10.08.21.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, text: "Your Order")
            List(orderModel.orders){ item in
                OrderRowView(orderItem: item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


