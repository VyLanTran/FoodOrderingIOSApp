//
//  CutomNavBarView.swift
//  FoodOrdering
//
//  Created by Vy Tran on 11/19/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @State private var showBackButton: Bool = true
    @State private var title: String = "Title"
    @State private var subtitle: String? = "Subtitle"
    
    var body: some View {
        HStack {
            if showBackButton {
                backButton
                
            }
            
            Spacer()
            
            titleSection
            
            Spacer()
            
            if showBackButton {
                backButton
                    .opacity(0)
            }
        }
        .padding()
        .font(.headline)
        .accentColor(.white)
        .foregroundColor(.white)
        .background(Color.blue.ignoresSafeArea(edges: .top))
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView()
            Spacer()
        }
    }
}

extension CustomNavBarView {
    private var backButton: some View {
        Button {
            
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subtitle = subtitle {
                Text(subtitle)
            }
        }
    }
}
