//
//  HomeView.swift
//  Netflix
//
//  Created by Devesh Tyagi on 03/04/21.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeViewModel()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow : Movie? = nil
    
    @State private var topRowSelection : HomeTopRow = .home
    @State private var homeGenre : HomeGenre = .AllGenres
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    
    var body: some View {
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            //Main Vstack
            ScrollView( showsIndicators: false) {
                LazyVStack  {
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre , showGenreSelection: $showGenreSelection , showTopRowSelection: $showTopRowSelection)
                    
                    TopMoviePreview(movie: exampleMovie3)
                        .frame(width : screen.width)
                        .padding(.top , -110)
                        .zIndex(-1)
                    
                    HomeStack(vm: vm,topRowSelection: topRowSelection  ,movieDetailToShow: $movieDetailToShow)
                }
            }
            if let movieDetailToShow = self.movieDetailToShow{
                MovieDetail(movie: movieDetailToShow, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    
    @Binding var topRowSelection : HomeTopRow
    @Binding var homeGenre : HomeGenre
    
    @Binding var showGenreSelection : Bool
    @Binding var showTopRowSelection : Bool
    var body: some View {
        switch topRowSelection{
        case .home :
            HStack{
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                
                
                Spacer()
                Button(action: {
                    topRowSelection = .tvShows
                }, label: {
                    Text("TV Shows")
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                Button(action: {
                    topRowSelection = .movies
                }, label: {
                    Text("Movies")
                })
                .buttonStyle(PlainButtonStyle())
                
                
                Spacer()
                Button(action: {
                    topRowSelection = .myList
                }, label: {
                    Text("My List")
                })
                .buttonStyle(PlainButtonStyle())
                
                
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
            
            
            
        case .tvShows , .movies , .myList:
            HStack{
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                
                HStack(spacing: 20){
                    Button(action: {
                      showTopRowSelection = true
                        
                    }, label: {
                        HStack {
                            Text("\(topRowSelection.rawValue)")
                                .font(.system(size: 18))
                            
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: .center)
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    
                    Button(action: {
                        //topRowSelection = .movies\
                        showGenreSelection = true
                        
                    }, label: {
                        Text(homeGenre.rawValue)
                            .font(.system(size: 12))
                        
                        Image(systemName: "triangle.fill")
                            .font(.system(size: 6))
                            .rotationEffect(.degrees(180), anchor: .center)
                    })
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                }
                
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
        
        }
        
    }
}
enum HomeTopRow : String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}
enum HomeGenre : String{
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Triller
    
}

