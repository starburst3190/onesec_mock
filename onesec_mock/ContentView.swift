//
//  ContentView.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Overview", systemImage: "ring") {}
            
            Tab("Block", systemImage: "hand.raised.fill") {}
            
            Tab("Tips", systemImage: "lightbulb.fill") {
                TipsView()
            }
            
            Tab("Customize", systemImage: "switch.2") {}
        }
    }
}

#Preview {
    ContentView()
}
