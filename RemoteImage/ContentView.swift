//
//  ContentView.swift
//  RemoteImage
//
//  Created by aprillee on 2022/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AsyncImageDemoView()) {
                    Label {
                        Text("AsyncImage")
                    } icon: {
                        Image(systemName: "puzzlepiece")
                            .foregroundColor(.orange)
                    }
                }
                
                NavigationLink(destination: SDWebImageDemoView()) {
                    Label {
                        Text("SDWebImage")
                    } icon: {
                        Image(systemName: "puzzlepiece.extension")
                            .foregroundColor(.purple)
                    }
                }
            }
            .navigationTitle("Remote Image")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
