//
//  ConfirmView.swift
//  OrderApp
//
//  Created by Karyna Katrich on 18.08.21.
//

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
    @Binding var isPresented: Bool
    @ObservedObject var orderModel:OrderModel
    @Binding var quantity: Int
    @Binding var size: Size
    @State var comments: String = ""
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }

    func addItem(){
        orderModel.add(menuID: menuID, size: size, quantity: quantity, comments: comments)
        isPresented = false
    }

    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(10)
                .onTapGesture (count: 2) {
                    self.isPresented = false
                }
            Divider()
            Text("Confirm your order of \(quantity) \(size.formatted()) \(name) pizza")
                .font(.headline)
            TextField("Add your commenta here", text: $comments)
                .background(Color("G4"))
            Spacer()
            Button(action: addItem){
                Text("Add")
                    .font(.title)
                .padding()
                .background(Color("G4"))
                .cornerRadius(10)
            }.padding([.bottom])
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, isPresented: .constant(true), orderModel: OrderModel(), quantity: .constant(1), size: .constant(.small))
    }
}
