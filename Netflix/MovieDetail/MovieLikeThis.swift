//
//  MovieLikeThis.swift
//  Netflix
//
//  Created by Devesh Tyagi on 18/04/21.
//

import SwiftUI

struct MovieLikeThis: View {
    var movies : [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(0..<movies.count){index in
                    StandardHomeMovie(movie: movies[index])
                    
                }
                
            }
        }
    }
}

struct MovieLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MovieLikeThis(movies: exampleMovies)
    }
}
