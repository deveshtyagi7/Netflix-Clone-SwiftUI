//
//  HomeViewModel.swift
//  Netflix
//
//  Created by Devesh Tyagi on 04/04/21.
//

import Foundation
class HomeViewModel: ObservableObject {
    @Published var movies : [String : [Movie]] = [:]
    public var allCategories : [String] {
        movies.keys.map({String($0)})
    }
    
    public var allGenre : [HomeGenre] = [.AllGenres, .Action,.Comedy , .Horror, .Triller]
    init() {
        setupMovies()
    }
    public func getMovie(forCat cat :String, andHomeRow : HomeTopRow, andGenre genre : HomeGenre) -> [Movie]{
      
        switch andHomeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({($0.movieType == .movie) && ($0.genre == genre) })
        case .tvShows:
            return (movies[cat] ?? []).filter({($0.movieType == .tvShow)  && ($0.genre == genre)})
        case .myList:
            
            return movies[cat] ?? []
            
            // TODO: Setup My List Properly
        }
    }
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["What It Again"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
