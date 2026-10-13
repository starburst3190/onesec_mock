//
//  CategoryRow.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/13.
//

import SwiftUI

struct CategoryRow: View {
    let title: String
    let systemImage: String
    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .foregroundStyle(.accent)
                .font(.title2)
                .frame(width: 28)
            Text(title)
            Spacer()
            Image(systemName: "chevron.forward").foregroundStyle(.gray)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
    }
}

#Preview {
    CategoryRow(title: "Test", systemImage: "book")
}
