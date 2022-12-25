//
//  BottomNavBar.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/22/22.
//

import SwiftUI

struct BottomNavBar: View {
    @State var selectedId: Int = 0
    
    var body: some View {
        VStack {
             
            HStack(spacing: 25) {
                BottomNavBarItem(id: 1, image: Image(systemName: "house.fill"), text: "Home", page: .homeScreen, selectedId: $selectedId)
                
                BottomNavBarItem(id: 2, image: Image(systemName: "clock.arrow.circlepath"), text: "History", page: .homeScreen, selectedId: $selectedId)
              
                CartLabel(selectedId: $selectedId)
                
                BottomNavBarItem(id: 4, image: Image(systemName: "bell"), text: "Notifications", page: .homeScreen, selectedId: $selectedId)
                
                BottomNavBarItem(id: 5, image: Image(systemName: "person.fill"), text: "Account", page: .homeScreen, selectedId: $selectedId)
                
            }
            .frame(maxWidth: .infinity, alignment: .bottom)
            .padding(.top)
        }
        .overlay(Divider(), alignment: .top)
//        .frame(height: 10)
    }
}



struct BottomNavBarItem: View {
    var id: Int
    var image: Image
    var text: String
    var page: Page
    @Binding var selectedId: Int
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack {
            image
                .foregroundColor(id == selectedId ? .black : .gray)
                .font(.system(size: 20))
                .onTapGesture {
                    selectedId = id
                    viewRouter.currentPage = page
                }

            Text(text)
                .font(.caption2)
                .foregroundColor(id == selectedId ? .black : .gray)
        }
    }
}



struct CartLabel: View {
    @Binding var selectedId: Int
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            // Cart image
            BottomNavBarItem(id: 3, image: Image(systemName: "cart.fill"), text: "Cart", page: .cartView, selectedId: $selectedId)
            

            if cartManager.numberOfItems > 0 {
                Text("\(cartManager.numberOfItems)")
                    .font(.system(size: 12))
                    .bold()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.93, brightness: 0.72))
                    .cornerRadius(50)
            }
        }
    }
}

struct BottomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBar()
    }
}
