//
//  MovieDetail.swift
//  Netflix
//
//  Created by Devesh Tyagi on 18/04/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie : Movie
    let screen  = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        //Close This View
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                    
                }.padding(.horizontal , 22)
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                    VStack{
                        StandardHomeMovie(movie: movie)
                            .frame(width : screen.width / 2.5)
                        
                        MovieInfoSubheadLine(movie: movie)
                        
                        if let headline =  movie.promotionHeadline {
                            Text(headline)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }
                        
                        //Current Episode Info
                        CurrentEpisodeInformation(movie : movie)
                        
                       
                        CastInfo(movie: movie)
                        
                        HStack(spacing : 60){
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                //
                            }
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                //
                            }
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up",isOffImage: "square.and.arrow.up", isOn: true) {
                                //
                            }
                            Spacer()
                        }
                        .padding(.leading, 20)
                     
                        CustomTabSwitcher(tabs: [.episodes,.trailers,.more], movie : exampleMovie1)
                    }
                    .padding(.horizontal, 12)
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie3)
    }
}


struct MovieInfoSubheadLine: View {
    var movie : Movie
    var body: some View {
        HStack(spacing : 20){
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            
            RatingView(rating : movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            ZStack{
                Rectangle()
                    .foregroundColor(.black)
                    .border(Color.gray.opacity(0.70), width: 3)
                    .cornerRadius(3)
                    
               Text("HD")
                .font(.system(size: 12))
                .bold()
            }.frame(width: 30, height: 22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(.gray)
        .padding(.vertical ,6)
    }
}

struct RatingView: View {
    var rating : String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie : Movie
    var body: some View {
        VStack(spacing : 3){
            HStack{
                Text("Cast : \(movie.cast)")
                
                Spacer()
            }
            
            HStack{
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical , 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie : Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }.padding(.vertical , 4)
            
            HStack{
                Text(movie.episodeDescription)
                    .font(.subheadline)
                Spacer()
            }
            
        }
    }
}
