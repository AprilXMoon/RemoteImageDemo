//
//  AsyncImageDemoView.swift
//  RemoteImage
//
//  Created by aprillee on 2022/4/26.
//

import SwiftUI

struct AsyncImageDemoView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<20, id: \.self) { _ in
                    ImageItem()
                }
            }
        }
    }
}

struct ImageItem: View {
    
    var body: some View {
        AsyncImage(url: URL(string: "https://source.unsplash.com/random/200x200?sig=\(Int.random(in: 10...500))")) { image in
            image
                .resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(maxWidth: .infinity, minHeight: 350)
    }
}

struct AsyncImageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageDemoView()
    }
}
