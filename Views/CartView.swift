//
//  CartView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    @Binding var selectedTab: Tag
    
    var body: some View {
        VStack {
            Text("My Order")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()

            if cartManager.getNumberOfItems() > 0 {
                List {
                    listRestaurant(for: Array(cartManager.order.keys))
                }
                .listStyle(PlainListStyle())
            }
            else {
                EmptyCart(selectedTab: $selectedTab)
                
            }

            Spacer()
//            BottomNavBar()
        }
    }


    private func listRestaurant(for restaurantNames: [String]) -> some View {
        ForEach(restaurantNames, id: \.self) { restaurantName in
            let restaurant = Restaurant.all.filter { $0.name == restaurantName }[0]

            RestaurantInCart(restaurant: restaurant)
        }
        .onDelete { indexSet in
            let key = restaurantNames[indexSet.first!]
            cartManager.order.removeValue(forKey: key)
        }
        .listRowInsets(EdgeInsets())
        .listRowSeparator(.hidden)
    }
}



struct EmptyCart: View {
    
    @Binding var selectedTab: Tag
//    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(spacing: 40) {
            Image("empty_cart")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("You haven't started an order yet")
                .font(.title3)
                .bold()
            
            // "Start Ordering" button
            Button {
//                viewRouter.currentPage = .homeScreen
                self.selectedTab = Tag.homeScreen
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


