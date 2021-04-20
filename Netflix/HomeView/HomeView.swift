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
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
                //Main Vstack
            ScrollView( showsIndicators: false) {
                LazyVStack  {
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie3)
                        .frame(width : screen.width)
                        .padding(.top , -100)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories,id : \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                        
                    }
                }
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
    var body: some View {
        HStack{
            Button(action: {
                //
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("TV Shows")
            })
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("My List")
            })
            .buttonStyle(PlainButtonStyle())
            
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}