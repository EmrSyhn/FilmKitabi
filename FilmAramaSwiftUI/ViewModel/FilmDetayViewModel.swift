//
//  FilmDetayViewModel.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 18.12.2023.
//

import Foundation
import SwiftUI

class FilmDetayViewModel : ObservableObject {
    @Published var filmDetayi : FilmDetaylariViewModel?
    
    let downloadClient = DownloaderClient()
    
    
    func filmDetayAl (imdbId: String){
        downloadClient.filmDetay(imdbId: imdbId) { (sonuc) in
            switch sonuc {
                case .failure(let failure):
                    print(failure)
                case .success(let success):
                    DispatchQueue.main.async {
                        self.filmDetayi = FilmDetaylariViewModel(detay: success)
                    }
            }
        }
    }
}

struct FilmDetaylariViewModel {
    let detay : FilmDetay
    var title : String {
        detay.title
    }
    var genre : String {
        detay.genre
    }
    var writer : String {
        detay.writer
    }
    var director : String {
        detay.director
    }
    var plot : String {
        detay.plot
    }
    var poster : String {
        detay.poster
    }
}
