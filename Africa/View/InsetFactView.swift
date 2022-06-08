//
//  InsetFactView.swift
//  Africa
//
//  Created by Zach Cervi on 6/7/22.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: -PROPERTIES
    let animal: Animal
    //MARK: -BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 148, maxHeight: 180)
        }//:GROUPBOX
    }
}

//MARK: -PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[6])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
