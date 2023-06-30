//
//  DetailsView.swift
//  Places
//
//  Created by Shourov Roy on 23/6/23.
//

import SwiftUI

struct DetailsView: View {
    
    var placeDeatils: PlaceModel
    
    
    var body: some View {
        List{
            MapView(coordinates: placeDeatils.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            ImageCircleView(image: placeDeatils.image)
                .offset(y: -120)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading){
                Text(placeDeatils.name)
                    .font(.title)
                HStack{
                    Text(placeDeatils.park)
                    Spacer()
                    Text(placeDeatils.state)
                }
                .font(.subheadline)
                Divider()
                
                Text("About \(placeDeatils.name)")
                    .font(.title2)
                Text(placeDeatils.description)
            }
            .padding()
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
        

    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(placeDeatils: placeList[0])
    }
}
