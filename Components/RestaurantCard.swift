//
//  RestaurantCard.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/21/22.
//

import SwiftUI

struct RestaurantCard: View {
    var restaurant: Restaurant
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(
                url: URL(string: restaurant.image),
                content: { image in
                    image.resizable()
                },
                placeholder: {
                    Image(systemName: "photo")
                }
            )
            .frame(width: 160, height: 140)
            .cornerRadius(6)
            .shadow(radius: 4)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(restaurant.name)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                HStack(spacing: 2) {
                    ForEach(0 ..< Int(restaurant.rating)) { i in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 12))
                    }
                }
                
                Text(restaurant.address)
                    .font(.system(size: 12))
                    .foregroundColor(.black)
            }
            .frame(width: 160, height: 120)
            .multilineTextAlignment(.leading)
        }
    }
}

struct RestaurantCard_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCard(restaurant: Restaurant.all[0])
    }
}
