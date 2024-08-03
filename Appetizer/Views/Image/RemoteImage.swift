//
//  RemoteImage.swift
//  Appetizer
//
//  Created by vibhu mishra on 24/07/24.
//

import SwiftUI

final class imageLoader: ObservableObject{
    @Published var image :Image? = nil
    func load(fromURLstring urlstring : String){
        NetworkManager.shared.downloadImage(fromUrlString: urlstring){imageui in
            guard let imageui = imageui else{return}
            DispatchQueue.main.async{
                self.image = Image(uiImage:imageui)
            }
        }
    }
}

struct RemoteImage:View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct appetizerRemoteImage: View {
    @StateObject var imageloader = imageLoader()
    let urlString:String
    var body: some View {
        RemoteImage(image: imageloader.image)
            .onAppear{imageloader.load(fromURLstring: urlString)}
        
    }
}
