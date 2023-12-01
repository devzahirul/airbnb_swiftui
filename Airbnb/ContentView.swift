//
//  ContentView.swift
//  Airbnb
//
//  Created by Hologram1 on 11/30/23.
//

import SwiftUI

struct ContentView: View {


  @State var searchDidTap = false
    var body: some View {
       
        VStack {
            HStack {
            SearchView(isExpend: $searchDidTap)
            
            Spacer()
            if !searchDidTap {
            Image(systemName: "line.horizontal.3")
            .padding(12)
            .background(
            Circle()
            .stroke(lineWidth: 1)
            .foregroundColor(Color(.systemGray4))
            )
            }
            }
            .padding()
            .onTapGesture {
                withAnimation() {
                      searchDidTap.toggle()
                }
              
            }
            
            
            
            
            ScrollView(showsIndicators: false) {
             VStack {
               ForEach(1...10, id: \.self) {option in
               
                  FeedItemView()
                  .padding(.bottom, 20)
               }
             }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
