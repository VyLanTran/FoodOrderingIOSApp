//
//  CartView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
        
    // Old version
//    var body: some View {
//        VStack {
//            Text("My Order")
//                .font(.title)
//                .bold()
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .padding()
//
//
//            ScrollView {
//                if cartManager.numberOfItems > 0 {
//                    ForEach(Array(cartManager.order.keys), id: \.self) { restaurantName in
//
//                        let restaurant = Restaurant.all.filter { $0.name == restaurantName }[0]
//
//                        RestaurantInCart(restaurant: restaurant)
//                    }
//
//                }
//                else {
//                    EmptyCart()
//                }
//            }
//
//            Spacer()
//
//            BottomNavBar()
//        }
//    }
    
    
    
    
    // Official version
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
                EmptyCart()
            }

            Spacer()

            BottomNavBar()
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
    
    
    
    /**
    // Unofficial version 2: Not using list
     var body: some View {
         VStack {
             Text("My Order")
                 .font(.title)
                 .bold()
                 .frame(maxWidth: .infinity, alignment: .leading)
                 .padding()
             
             
             ScrollView {
                 if cartManager.numberOfItems > 0 {
//                     ForEach(Array(cartManager.order.keys), id: \.self) { restaurantName in
//
//                         let restaurant = Restaurant.all.filter { $0.name == restaurantName }[0]
//
//                         RestaurantInCart(restaurant: restaurant)
//                     }
                     
                 }
                 else {
                     EmptyCart()
                 }
             }
             
             Spacer()
             
             BottomNavBar()
         }
     }
   
//    private func listRestaurant(restaurants: [(key: String, value: [Dish : Int])]) -> some View {
//        for index in 0...restaurants.count-1 {
//            let restaurantName = restaurants[index].key
//            let restaurant = Restaurant.all.filter { $0.name == restaurantName }[0]
//
//                 RestaurantInCart(restaurant: restaurant)
//        }
//    }
    
    */
    
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

