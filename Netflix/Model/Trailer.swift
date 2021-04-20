//
//  Trailer.swift
//  Netflix
//
//  Created by Devesh Tyagi on 19/04/21.
//

import Foundation
struct Trailer : Identifiable, Hashable{
    var id : String = UUID().uuidString
    var name : String
    var videoURL : URL
    var thumbnailImageURL : URL
}
