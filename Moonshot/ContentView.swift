//
//  ContentView.swift
//  Moonshot
//
//  Created by Mich balkany on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8}
            
    }
}

#Preview {
    ContentView()
}
