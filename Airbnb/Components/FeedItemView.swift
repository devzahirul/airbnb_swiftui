//
//  FeedItemView.swift
//  Airbnb
//
//  Created by Hologram1 on 11/30/23.
//

import SwiftUI

struct FeedItemView: View {
    var body: some View {
       VStack {
         //ImageView & heart
         VStack {
           ZStack(alignment: .topTrailing) {
             Image("house")
             .resizable()
             .scaledToFit()
             .clipShape(RoundedRectangle(cornerRadius: 12))
             
             
             Image(systemName: "heart")
             .foregroundColor(Color.white)
             .font(.system(size: 21))
             .padding()
           }
         }

         
         //texts & start
         VStack(alignment: .leading) {
          
          // title & start
          HStack {
            Text("Coloma, Michingan")
            
            Spacer()
            
            Text("* 4.43")
            
          }
          .font(.system(size: 10, weight: .bold))
          
          
          //addresss & others texts
          VStack(alignment: .leading) {
          Text("201 miles away")
          Text("2 nights . Dec 12 - Dec 15")
          HStack(spacing: 2) {
          Text("$208")
          .fontWeight(.bold)
          Text("total before taxes")
          }//.underline()
          }.font(.system(size: 8))
          
          
         }
       }.padding(.horizontal)
    }
}

struct FeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        FeedItemView()
        
    }
}
