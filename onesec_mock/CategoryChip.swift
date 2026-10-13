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
            HStack(alignment: .firstTextBaseline, spacing: 6) {
                Image(systemName: systemImage)
                    .font(.system(size: 20, weight: .medium))
                    .frame(height: 0)
                Text(title)
                    .font(.system(size: 17, weight: .semibold))
            }
            .padding(.horizontal, 4)
            .padding(.vertical, 5)
        }
        .buttonStyle(.glass)
        .foregroundStyle(.primary)
    }
}

#Preview {
    CategoryChip(title: "Test", systemImage: "book")
}
