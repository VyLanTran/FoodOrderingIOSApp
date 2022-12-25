//
//  RestaurantInCart.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/24/22.
//

import SwiftUI

struct RestaurantInCart: View {
    
    @EnvironmentObject var cartManager: CartManager
    var restaurant: Restaurant
    
    var body: some View {
        VStack {
            Divider()
            
            HStack(spacing: 20) {
                AsyncImage(
                    url: URL(string: restaurant.image),
                    content: { image in
                        image.resizable()
                    },
                    placeholder: {
                        Image(systemName: "photo")
                    }
                )
                .frame(width: 80, height: 80)
                .padding(.leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(restaurant.name)
                        .font(.system(size: 16))
                        .bold()
                   
                    Text("\(cartManager.dishes[restaurant.name]?.count ?? 0)")
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .bold()
                    .padding(.trailing)
            }
            .frame(height: 100)
        }
    }
}

struct RestaurantInCart_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantInCart(restaurant: Restaurant.all[3])
    }
}
