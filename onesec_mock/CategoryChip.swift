//
//  CategoryChip.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/13.
//

import SwiftUI

struct CategoryChip: View {
    let title: String
    let systemImage: String
    var body: some View {
        Button {
            // No action
        } label: {
            Image(systemName: systemImage)
            Text(title)
        }
        .buttonStyle(.glass)
        .foregroundStyle(.primary)
        .font(.system(size: 20, weight: .medium))
    }
}

#Preview {
    CategoryChip(title: "Test", systemImage: "book")
}
