//
//  RestaurantsView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/21/22.
//

import SwiftUI

struct RestaurantsView: View {
    
    var restaurantCategory: RestaurantCategory
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // List of restaurants in a specific ethnic category
    var restaurants: [Restaurant] {
        return Restaurant.all.filter{ $0.category == restaurantCategory.rawValue }
    }
    
    var body: some View {
        VStack() {
            RestaurantList(restaurants: restaurants)
                .navigationBarTitle(Text(restaurantCategory.rawValue + " Food"), displayMode: .inline)
            
            BottomNavBar()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
    
    var backButton: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundColor(.black)
                .bold()
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView(restaurantCategory: RestaurantCategory.thai)
    }
}
