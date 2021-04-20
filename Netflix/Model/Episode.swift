//
//  Episode.swift
//  Netflix
//
//  Created by Devesh Tyagi on 18/04/21.
//

import Foundation
struct Episode : Identifiable{
    var id = UUID().uuidString
    
    var name : String
    var season : Int
    var episodeNumber : Int
    var thumbnailImageUrlString : String
    var description : String
    var length : Int
    
    var videoURL : URL
    
    var thumbnailURL : URL{
        return URL(string: thumbnailImageUrlString)!
    }
}
