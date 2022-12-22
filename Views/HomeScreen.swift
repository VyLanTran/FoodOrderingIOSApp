//
//  HomeScreen.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/19/22.
//

import SwiftUI

struct HomeScreen: View {
    
    private let filterOptions = ["Restaurant", "Dishes", "Price", "Nearby", "Time"]
    @State var selection: String = "Restaurant"
    @StateObject var cartManager: CartManager = CartManager()
    
    
    var body: some View {
        NavigationView {
            VStack() {
                VStack(spacing: -30) {
                    AppBarView()
                    SearchView()
                }
                
                // Selected filters
                ScrollView (.horizontal) {
                    HStack {
                        ForEach(0 ..< filterOptions.count) { i in
                            FilterSelectedView(isSelected: true, text: filterOptions[i])
                        }
                    }
                    .padding()
                }
                
                OptionsView(selection: $selection)
                
                if (selection == "Restaurant") {
                    RestaurantCategories()
                        .padding(.vertical)
                }
                
                Spacer()

                BottomNavBar()
                    .padding(.top)
                
            }
//            .background(Color("background"))
        }
        .environmentObject(cartManager)
    }
}



struct AppBarView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 12) {
                Text("Deliver to")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 16))
                Text("Vy, Tran")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
            }
            .padding(.top)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
//                    .background(.gray)
                    .cornerRadius(50)
//                    .paddding(10)
                    .padding()
            }
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 150, alignment: .topLeading)
        .background(Color.black)
    }
}

struct SearchView: View {
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            Image("search")
                .padding(.trailing, 8)
            TextField("Search for restaurant or food", text: $search)
                .frame(height: 30)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(18.0)
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.15), radius: 8)
    }
}

struct FilterSelectedView: View {
    let isSelected: Bool
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.darkGray))
                .frame(height: 40)
                .cornerRadius(14.0)

            HStack {
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                Button(action: {}) {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.system(size: 9))
                    .fontWeight(.semibold)
                }
            }
            .padding()
        }
    }
}

struct OptionsView: View {
    private let options = ["Restaurant", "Dishes", "Price", "Nearby", "Time"]
    @State private var selectedIndex: Int = 0
    @Binding var selection: String
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0 ..< options.count) { i in
                    OptionView(isSelected: i == selectedIndex, text: options[i])
                        .onTapGesture {
                            selectedIndex = i
                            selection = options[i]
                        }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct OptionView: View {
    let isSelected: Bool
    let text: String
    
    var body: some View {
        VStack(spacing: 2) {
            Text(text)
                .font(.system(size: 16))
                .foregroundColor(isSelected ? Color.black : Color.gray)
                .fontWeight(.medium)
                
            if (isSelected) {
                Color.black
                    .frame(height: 2)
            }
            else {
                Color.clear.frame(height: 2)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(ViewRouter())
    }
}
