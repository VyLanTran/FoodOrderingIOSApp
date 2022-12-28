//
//  CategoryCard2.swift
//  FoodOrdering
//
//  Created by Vy Tran on 12/28/22.
//

import SwiftUI

struct CategoryCard2: View {
    let category: String
    let image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: 170, height: 100)
                .cornerRadius(8)
            
            Spacer()
            
            Text(category)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(width: 170, height: 130)
        .background(.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(hue: 0, saturation: 0, brightness: 0.75), lineWidth: 0.5)
        )
    }
}

struct CategoryCard2_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 10) {
            CategoryCard2(category: "Mexican", image: Image("Mexican"))
            CategoryCard2(category: "Italian", image: Image("Italian"))
        }
    }
}
