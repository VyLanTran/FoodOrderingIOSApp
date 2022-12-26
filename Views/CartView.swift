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
                Text("My Order")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                if cartManager.numberOfItems > 0 {
                    ForEach(Array(cartManager.order.keys), id: \.self) { restaurantName in

                        let restaurant = Restaurant.all.filter { $0.name == restaurantName }[0]
                        
                        RestaurantInCart(restaurant: restaurant)
                    }
                }
                else {
                    EmptyCart()
                }
            }
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

