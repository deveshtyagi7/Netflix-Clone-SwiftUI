//
//  GlobalHelper.swift
//  Netflix
//
//  Created by Devesh Tyagi on 04/04/21.
//

import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian","Exciting", "Suspenseful", "Sci-Fi TV"],
                          year : 2020,
                          rating : "TV-MA",numberOfSeasons : 1,
                          defaultEpidodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odan , Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis",
                          moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie3],
                          trailers: exampleTrailers)
let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305/")!,
                          categories: ["Dystopian","Exciting", "Suspenseful", "Sci-Fi TV"],
                          year : 2020,
                          rating : "TV-MA",
                          numberOfSeasons : 2,
                          defaultEpidodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odan , Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Exciting", "Suspenseful", "Sci-Fi TV"],
                          year : 2020,
                          rating : "TV-MA",
                          numberOfSeasons : 5,
                          defaultEpidodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odan , Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian","Exciting", "Suspenseful", "Sci-Fi TV"],
                          year : 2020,
                          rating : "TV-MA",
                          numberOfSeasons : 6,
                          defaultEpidodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odan , Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian","Exciting", "Suspenseful", "Sci-Fi TV"],
                          year : 2020,
                          rating : "TV-MA",
                          numberOfSeasons : 3,
                          defaultEpidodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odan , Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian","Exciting",
                                       "Suspenseful", "Sci-Fi TV"],
                          year : 2020, rating : "TV-MA",
                          numberOfSeasons : 1,
                          defaultEpidodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odan , Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis",
                          moreLikeThisMovies: [],
                          promotionHeadline : "Watch Season 6 Now",
                          trailers: exampleTrailers)

let episode1 = Episode(name: "Endings and Beginnings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageUrlString: "https://picsum.photos/299/100",
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageUrlString: "https://picsum.photos/299/101",
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageUrlString: "https://picsum.photos/299/102",
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode4 = Episode(name: "Endings and Beginnings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageUrlString: "https://picsum.photos/299/106",
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageUrlString: "https://picsum.photos/299/104",
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageUrlString: "https://picsum.photos/299/105",
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.",
                       length: 53,
                       videoURL: exampleVideoURL)
var allExampleEpisodes = [episode1,episode2,episode3,episode4,episode5,episode6]

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Here's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]


let exampleImageURL = URL(string: "https://picsum.photos/300/107")!
let exampleImageURL1 = URL(string: "https://picsum.photos/300/108")!

let exampleImageURL2 = URL(string: "https://picsum.photos/300/109")!

var randomExampleImageURL : URL{
    return [exampleImageURL,exampleImageURL1,exampleImageURL2].randomElement() ?? exampleImageURL
}

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4")!
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Endings and Beginnings", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant.", season: 2, episode: 1)
var exampleMovies : [Movie] {
    return [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
    
}

extension LinearGradient{
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
extension String {
    func widthOfString(usingFont font : UIFont) -> CGFloat{
        let fontAttributes = [NSAttributedString.Key.font : font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
