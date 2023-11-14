//
//  ContentView.swift
//  Moonshot
//
//  Created by Mich balkany on 11/14/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink{
                Text("Detailed View")
            } label: {
                VStack {
                    Text("This is a label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
                .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
