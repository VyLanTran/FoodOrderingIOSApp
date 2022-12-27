//
//  RestaurantsView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/21/22.
//

import SwiftUI

struct RestaurantsView: View {
    var restaurantCategory: RestaurantCategory
    
    // List of restaurants with a specific ethnic category
    var restaurants: [Restaurant] {
        return Restaurant.all.filter{ $0.category == restaurantCategory.rawValue }
    }
    
    var body: some View {
        VStack() {
            VStack {
                Text(restaurantCategory.rawValue)
            }
            .frame(height: 0)
            
            RestaurantList(restaurants: restaurants)
//                .navigationTitle(Text(restaurantCategory.rawValue))
            
            BottomNavBar()
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView(restaurantCategory: RestaurantCategory.thai)
    }
}
