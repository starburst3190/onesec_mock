//
//  ArticleCard.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/13.
//

import SwiftUI

struct ArticleCard: View {
    let tag: String
    let tagIcon: String
    let title: String
    let readTime: Int
    let imageName: String?
    let backgroundColor: Color
    let textColor: Color
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(backgroundColor)
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    TagLabel(title: tag, systemImage: tagIcon, color: textColor)
                    Spacer()
                    Text(title)
                        .fontDesign(.serif)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(textColor)
                        .lineLimit(3)
                        .padding(.bottom, 2)
                    Text("\(readTime) min read")
                        .font(.footnote)
                        .foregroundStyle(textColor)
                        .opacity(0.5)
                }
                .padding(12)
                .frame(maxWidth: .infinity, alignment: .leading)
                if let imageName {
                    Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 172)
    }
}

#Preview {
    ArticleCard(tag: "Feature", tagIcon: "star", title: "The most impactful update ever!", readTime: 2, imageName: "update", backgroundColor: .gray, textColor: .white)
}
