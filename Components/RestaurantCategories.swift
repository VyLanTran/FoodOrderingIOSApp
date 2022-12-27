//
//  RestaurantCategories.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/20/22.
//

import SwiftUI

struct RestaurantCategories: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach (RestaurantCategory.allCases) { restaurantCategory in
                    NavigationLink {
                        RestaurantsView(restaurantCategory: restaurantCategory)
                    } label: {
                        CategoryCard(category: restaurantCategory.rawValue, image: Image("\(restaurantCategory.rawValue)"))
                    }
                    .navigationBarHidden(true)
                    .foregroundColor(.black)
                }
                .padding(.trailing)
            }
            .padding(.leading)
        }
    }
}

struct RestaurantCategories_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCategories()
    }
}


