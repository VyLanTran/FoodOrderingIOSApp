//
//  CartButton.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/21/22.
//

import SwiftUI

struct CartButton: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        // .topTrailing so that the number of items will be displayed on the top-right corner of the cart
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if cartManager.numberOfDishes > 0 {
                Text("\(cartManager.numberOfDishes)")
                    .font(.caption2.bold())
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
                
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton().environmentObject(CartManager())
    }
}
