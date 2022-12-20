//
//  CartView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack {
            ScrollView {
                if cartManager.dishes.count > 0 {
                    ForEach(cartManager.dishes, id: \.id) { dish in
                        DishInCart(dish: dish)
                    }
                }
                else {
                    EmptyCart()
                }
            }
            .navigationTitle("My Order")
            .padding(.top)
            
            BottomNavBar()

        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
            .environmentObject(ViewRouter())
    }
}

struct EmptyCart: View {
    var body: some View {
        VStack(spacing: 40) {
            Image("empty_cart")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Text("You haven't started an order yet")
                .font(.title3)
                .bold()
            
            // Start Ordering button
            Button {
                
            } label: {
                Text("Start Ordering")
                    .font(.headline)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }

        }
    }
}
