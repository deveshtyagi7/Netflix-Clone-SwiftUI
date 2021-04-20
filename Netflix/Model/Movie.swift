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
    
    //Movie Detail View
    
    var year : Int
    var rating  : String
    var numberOfSeasons: Int?
    
    //Personilazation
    var currentEpisode : CurrentEpisodeInfo?
    
    
    var defaultEpidodeInfo : CurrentEpisodeInfo 
    var creators : String
    var cast : String
    
    var moreLikeThisMovies : [Movie]
    var episodes : [Episode]?
    
    var promotionHeadline :String?
    
    var trailers : [Trailer]
    var numberOfSeasonsDisplay : String{
        if let num = numberOfSeasons{
            if num == 1 {
                return "1 Season"
                
            }else {
                return "\(num) Seasons"
            }
        }
            return ""
        
    }
    
    var episodeInfoDisplay : String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }else {
            return "S\(defaultEpidodeInfo.season):E\(defaultEpidodeInfo.episode) \(defaultEpidodeInfo.episodeName)"
        }
    }
    
    var episodeDescription : String {
        if let current = currentEpisode {
            return current.description
        }
        return defaultEpidodeInfo.description
        
    }
}
struct CurrentEpisodeInfo : Hashable, Equatable{
    var episodeName : String
    var description : String
    var season : Int
    var episode : Int
}
