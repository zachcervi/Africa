//
//  CenterModifier.swift
//  Africa
//
//  Created by Zach Cervi on 6/10/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
