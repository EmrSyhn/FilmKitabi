//
//  OzelImage.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 12.12.2023.
//

import SwiftUI

struct OzelImage: View {
    
    let url : String
    @ObservedObject var imageDownloaderClient = ImageDownloaderClient()
    
    
    init (url:String){
        self.url = url
        self.imageDownloaderClient.gorselIndir(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageDownloaderClient.indirilenGorsel {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
                .frame(width: 90 ,height: 130)
        }else {
            return Image("placeholder")
                .resizable()
                .frame(width: 90 ,height: 130)
        }
    }
}

#Preview {
    OzelImage(url: "https://m.media-amazon.com/images/M/MV5BMjI2MzU2NzEzN15BMl5BanBnXkFtZTcwMzI5NTU3Nw@@._V1_SX300.jpg")
}
