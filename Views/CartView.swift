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
                if cartManager.numberOfDishes > 0 {
                    ForEach(Array(cartManager.dishes.keys), id: \.self) { restaurant in
                        Text(restaurant)
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



struct EmptyCart: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
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
                viewRouter.currentPage = .homeScreen
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


struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

