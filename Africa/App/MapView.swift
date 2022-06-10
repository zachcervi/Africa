//
//  MapView.swift
//  Africa
//
//  Created by Zach Cervi on 6/7/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: - BODY
    var body: some View {
        //MARK: - BASIC MAP
       // Map(coordinateRegion: $region)
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {item in
            //A Pin old Sttyle (always static)
            //MapPin(coordinate: item.location, tint: .accentColor)
            //B Marker new style
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //C Custom Basic Annotation
//            MapAnnotation(coordinate: item.location){
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }//: ANNOTATION
            
            //OPTION D Complex Map Annotation
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        })//:MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                .resizable()
                .scaledToFit()
            .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3){
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//:HSTACK
                    
                    Divider()
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//:HSTACK
                    
                }
            }//:HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
    }
}


//MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
