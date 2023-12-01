//
//  SearchView.swift
//  Airbnb
//
//  Created by Hologram1 on 11/30/23.
//

import SwiftUI

struct SearchView: View {
    @Binding var isExpend: Bool
    var body: some View {
        VStack {
       
          HStack {
             
           Image(systemName: "magnifyingglass")
           .font(.system(size: 12))
           
           VStack(alignment: .leading, spacing: 4) {
            Text("Where to?")
            .font(.system(size: 8))
            .fontWeight(.light)
            Text("Anywhere . Any week . Address")
            .fontWeight(.ultraLight)
           }
           .font(.system(size: 8))
           
           Spacer()
           
          }
          .padding(.vertical, 8)
          .padding(.horizontal, 18)
          .background(shapeFor())
          .shadow(radius: 6)
        }
    }
    
    @ViewBuilder
    func shapeFor() -> some View {
       if isExpend {
       RoundedRectangle(cornerRadius: 20).fill(Color.white)
       
       } else {
       Capsule().fill(Color.white)
       }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(isExpend: .constant(false))
    }
}
