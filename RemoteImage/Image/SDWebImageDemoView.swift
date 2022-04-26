//
//  SDWebImageDemoView.swift
//  RemoteImage
//
//  Created by aprillee on 2022/4/26.
//

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageDemoView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<20, id: \.self) { _ in
                    SDImageItem()
                }
            }
        }
    }
}

struct SDImageItem: View {
    
    var body: some View {
        WebImage(url: URL(string: "https://source.unsplash.com/random/200x200?sig=\(Int.random(in: 10...500))"))
            .placeholder {
                Image(systemName: "gift")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 100)
            }
            .resizable()
            .frame(maxWidth: .infinity, minHeight: 350)
    }
}

struct SDWebImageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        SDWebImageDemoView()
    }
}
