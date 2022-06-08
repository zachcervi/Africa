//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Zach Cervi on 6/7/22.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: -PROPERTIES
    let animal: Animal
    //MARK: -BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
              //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
             //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
            //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
            
            //GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
            
            //FACTS
                
            //DESCRIPTION
                
            //MARP
                
           //LINK
            }//:VSTACK
            .navigationBarTitle("Learn about \(animal.name)s", displayMode: .inline)
        }//:SCROLLVIEW
        
    }
}

//MARK: -PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[5])
        }
     
    }
}
