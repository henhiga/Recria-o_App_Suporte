//
//  mapaView.swift
//  app support
//
//  Created by Henrique on 14/08/23.
//

import SwiftUI
import MapKit

struct mapaView: View {
    @State private var region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: 40.83834587046632,
                        longitude: 14.254053016537693),
                    span: MKCoordinateSpan(
                        latitudeDelta: 20,
                        longitudeDelta: 20)
                    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct mapaView_Previews: PreviewProvider {
    static var previews: some View {
        mapaView()
    }
}
