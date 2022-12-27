//
//  RestaurantMenu.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/22/22.
//

import SwiftUI

struct RestaurantMenu: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        VStack {
            Text(restaurant.name)
                .font(.system(size: 26))
                .bold()
            
            ScrollView {
                VStack {
                    ForEach(restaurant.menu, id: \.id) { dish in
                        DishCard(dish: dish)
                    }
                    
                    Divider()
                }
            }
            .padding(.vertical)
            
            BottomNavBar()
        }
    }
}

struct RestaurantMenu_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenu(restaurant: Restaurant.all[2])
    }
}
