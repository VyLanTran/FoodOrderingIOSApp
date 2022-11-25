//
//  DishInCart.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/23/22.
//

import SwiftUI

struct DishInCart: View {
    var dish: Dish
    
    var body: some View {
        VStack {
            Divider()
            
            HStack(spacing: 20) {
                AsyncImage(
                    url: URL(string: dish.image),
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
                    Text(dish.name)
                        .font(.system(size: 16))
                        .bold()
                   
                    Text("$\(dish.price, specifier: "%.2f")")
                        .font(.subheadline)
                        .fontWeight(.light)
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

struct DishInCart_Previews: PreviewProvider {
    static var previews: some View {
        DishInCart(dish: Dish.all[0])
    }
}
