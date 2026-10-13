//
//  FeaturedCard.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/13.
//

import SwiftUI

struct FeaturedCard: View {
    let tag: String
    let tagIcon: String
    let title: String
    let readTime: Int
    let backgroundColor: Color
    let textColor: Color
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(backgroundColor)
            VStack(alignment: .leading) {
                TagLabel(title: tag, systemImage: tagIcon, color: textColor)
                Text(title)
                    .fontDesign(.serif)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(textColor)
                    .padding(.bottom, 2)
                Text("\(readTime) min read")
                    .font(.footnote)
                    .foregroundStyle(textColor)
                    .opacity(0.5)
            }
            .padding(12)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 284)
    }
}

#Preview {
    FeaturedCard(tag: "Tag", tagIcon: "book", title: "why one sec is the best app ever", readTime: 3, backgroundColor: .gray, textColor: .white)
}
