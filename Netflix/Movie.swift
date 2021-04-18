//
//  Movie.swift
//  Netflix
//
//  Created by Devesh Tyagi on 04/04/21.
//

import Foundation
struct Movie : Identifiable{
    var id : String
    var name : String
    var thumbnailURL : URL
    
    var categories : [String]
}
