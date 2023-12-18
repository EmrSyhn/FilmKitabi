//
//  ContentView.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 4.12.2023.
//

import SwiftUI

struct FilmListeView: View {
    @ObservedObject var filmListeViewModel : FilmListeViewModel
    
    @State var aranacakFilm = ""
    init() {
        self.filmListeViewModel = FilmListeViewModel()
       
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Aranacak Film",text: $aranacakFilm) {
                    self.filmListeViewModel.filmAramasiYap(filmIsmi: aranacakFilm.trimmingCharacters(in: .whitespacesAndNewlines).addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? aranacakFilm)
                }.padding().textFieldStyle(.roundedBorder)
                
                List(filmListeViewModel.filmler,id: \.film.imdbID){
                    film in
                    
                    NavigationLink {
                        DetayView(imdbId: film.imdbId)
                    } label: {
                        HStack {
                            OzelImage(url: film.poster)
                            VStack (alignment:.leading) {
                                Text(film.title)
                                    .font(.title3)
                                Text(film.year)
                                    .foregroundStyle(.opacity(0.6))
                            }   
                    }
                    }
            }.navigationTitle("Film Kitabı")
            
        }
    }
        
    }
}

#Preview {
    FilmListeView()
}
