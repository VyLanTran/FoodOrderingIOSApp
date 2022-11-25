//
//  RestaurantCategoryCard.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/22/22.
//

import SwiftUI

struct RestaurantCategoryCard: View {
    let category: String
    let image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
                .shadow(radius: 4)

            Text(category)
                .fontWeight(.semibold)
        }
    }
}

struct RestaurantCategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCategoryCard(category: "American", image: Image("American"))
    }
}
