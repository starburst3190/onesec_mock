//
//  TagLabel.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/13.
//

import SwiftUI

struct TagLabel: View {
    let title: String
    let systemImage: String
    let color: Color
    var body: some View {
        ZStack {
            HStack(spacing: 4) {
                Image(systemName: systemImage)
                Text(title)
            }
            .foregroundStyle(color)
            .font(.footnote)
            .padding(.horizontal, 6)
            .padding(.vertical, 4)
            .background(.black.opacity(0.2), in: RoundedRectangle(cornerRadius: 4))
        }
    }
}

#Preview {
    TagLabel(title: "Test", systemImage: "book", color: .white)
}
