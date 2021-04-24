//
//  HomeStack.swift
//  Netflix
//
//  Created by Devesh Tyagi on 24/04/21.
//

import SwiftUI

struct HomeStack: View {
    var vm : HomeViewModel
    
    var topRowSelection  : HomeTopRow
    
    var selectedGenre : HomeGenre
    @Binding var movieDetailToShow : Movie?
    var body: some View {
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
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 100, height: 200)
                                .padding(.horizontal, 20)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
            
        }
    }
}


struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                HomeStack(vm: HomeViewModel(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
           
        }
        
    }
}
