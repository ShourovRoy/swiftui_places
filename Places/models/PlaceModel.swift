//
//  PlaceModel.swift
//  Places
//
//  Created by Shourov Roy on 23/6/23.
//

import Foundation
import SwiftUI
import CoreLocation


struct PlaceModel: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image : Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
    
    
}

