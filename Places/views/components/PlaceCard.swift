//
//  PlaceCard.swift
//  Places
//
//  Created by Shourov Roy on 23/6/23.
//

import SwiftUI

struct PlaceCard: View {
    
    var placeDeatils: PlaceModel
    
    
    var body: some View {
        HStack{
            placeDeatils.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(placeDeatils.name)
                    .font(.title2)
                Text(placeDeatils.park)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct PlaceCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCard(placeDeatils: placeList[0])
    }
}
