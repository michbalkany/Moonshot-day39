//
//  ContentView.swift
//  Moonshot
//
//  Created by Mich balkany on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                ForEach(0..<100) {
                    Text("item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
