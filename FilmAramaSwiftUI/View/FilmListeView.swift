//
//  ContentView.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 4.12.2023.
//

import SwiftUI

struct FilmListeView: View {
    @ObservedObject var filmListeViewModel : FilmListeViewModel
    
    init() {
        self.filmListeViewModel = FilmListeViewModel()
        self.filmListeViewModel.filmAramasiYap(filmIsmi: "pulp")
    }
    
    var body: some View {
        List(filmListeViewModel.filmler,id: \.film.imdbID){
            film in
            HStack {
                Image("placeholder")
                    .resizable()
                    .frame(width: 50,height: 50)
                
                VStack (alignment:.leading) {
                    Text(film.title)
                        .font(.title3)
                    Text(film.year)
                        .foregroundStyle(.opacity(0.6))
                }
                
            }
            
        }
       
    }
}

#Preview {
    FilmListeView()
}
