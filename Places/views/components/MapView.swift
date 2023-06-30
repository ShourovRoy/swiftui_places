//
//  MapView.swift
//  Places
//
//  Created by Shourov Roy on 23/6/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinates: CLLocationCoordinate2D
    
    
    @State private var region = MKCoordinateRegion()
    
    
    
    var body: some View {
        Map(coordinateRegion: $region).onAppear{
            setLocation(coordinates)
        }
    }
    
    
    
//    set coordinates to the region
    private func setLocation(_ coordinates: CLLocationCoordinate2D) -> Void {
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: placeList[0].locationCoordinate)
    }
}
