//
//  EpisodeView.swift
//  Netflix
//
//  Created by Devesh Tyagi on 20/04/21.
//

import SwiftUI

struct EpisodeView: View {
    var episodes : [Episode]
    
    @Binding var showSeasonPicker : Bool
    @Binding var selectedSeason : Int
    
    func getEpisodes(forSeason season : Int) -> [Episode]{
        return episodes.filter({$0.season == season})
    }
    var body: some View {
        VStack{
            //Season Picker
            HStack{
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group{
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            //Episode List
            
            ForEach(getEpisodes(forSeason: selectedSeason   )) {(episode) in
                Text("\(selectedSeason)")
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            EpisodeView(episodes: [episode1,episode2,episode3], showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
