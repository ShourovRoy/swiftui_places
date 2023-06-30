//
//  ImageCircleView.swift
//  Places
//
//  Created by Shourov Roy on 23/6/23.
//

import SwiftUI

struct ImageCircleView: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 220, height: 220)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct ImageCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCircleView(image: placeList[0].image)
    }
}
