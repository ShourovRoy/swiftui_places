//
//  ContentView.swift
//  Places
//
//  Created by Shourov Roy on 20/6/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        NavigationStack {
            
            List(placeList) {index in
                NavigationLink(value: index) {
                    PlaceCard(placeDeatils: index)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Gollila Oddli")
            
            .navigationDestination(for: PlaceModel.self) { index in
                DetailsView(placeDeatils: index)
            }
            
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
