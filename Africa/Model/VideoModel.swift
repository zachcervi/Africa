//
//  VideoModel.swift
//  Africa
//
//  Created by Zach Cervi on 6/8/22.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
