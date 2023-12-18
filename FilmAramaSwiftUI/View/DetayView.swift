//
//  DetayView.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 18.12.2023.
//

import SwiftUI

struct DetayView: View {
    let imdbId: String
    
    @ObservedObject var filmDetayViewModel = FilmDetayViewModel()
    
    var body: some View {
        VStack(
            alignment: .leading,
            content: {
            OzelImage(url: filmDetayViewModel.filmDetayi?.poster ?? "")
                
                    Text("Film: \(filmDetayViewModel.filmDetayi?.title ?? "")")
                Text("Yönetmen: \(filmDetayViewModel.filmDetayi?.director ?? "")")
                
                    
            Text("Yazar: \(filmDetayViewModel.filmDetayi?.writer ?? "")")
            
            
            
            Text(filmDetayViewModel.filmDetayi?.plot ?? "Pilot")
        }).onAppear(perform: {
            self.filmDetayViewModel.filmDetayAl(imdbId: imdbId)
        })
        
    }
}

#Preview {
    DetayView(imdbId: "allah var gam yok")
}
