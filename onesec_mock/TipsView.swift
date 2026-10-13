//
//  TipsView.swift
//  onesec_mock
//
//  Created by Jack on 2026/10/13.
//

import SwiftUI

struct TipsView: View {
    let labels = ["Learn", "Tutorial", "Feature", "Science"]
    let icons = ["graduationcap", "book", "star", "atom"]
    var body: some View {
        NavigationStack {
            ScrollView {
                // Cards
                VStack(alignment: .leading) {
                    Text("Latest").font(.title2).fontWeight(.bold)
                        .padding(.top)
                        .padding([.bottom, .leading], 8)
                    VStack(spacing: 12) {
                        FeaturedCard(tag: "Science", tagIcon: "atom", title: "why scientists love one sec", readTime: 7, backgroundColor: .cardSlate, textColor: .white)
                        
                        ArticleCard(tag: "Feature", tagIcon: "star", title: "The most impactful update ever!", readTime: 2, imageName: "update", backgroundColor: .cardGray, textColor: .primary)
                        ArticleCard(tag: "Science", tagIcon: "atom", title: "Stop Getting Nudged & Start Nudging Yourself", readTime: 10, imageName: "nudge", backgroundColor: .cardSlate, textColor: .white)
                        ArticleCard(tag: "Feature", tagIcon: "star", title: "Willpower isn't enough – Use Focus to Focus!", readTime: 12, imageName: "focus", backgroundColor: .cardMint, textColor: .black)
                        ArticleCard(tag: "Learn", tagIcon: "graduationcap", title: "Break your auto-pilot (fast)", readTime: 3, imageName: nil, backgroundColor: .cardGray, textColor: .primary)
                        ArticleCard(tag: "Science", tagIcon: "atom", title: "Friction will change your behavior", readTime: 10, imageName: "friction", backgroundColor: .cardOrange, textColor: .black)
                        ArticleCard(tag: "Learn", tagIcon: "graduationcap", title: "24 tips for Santa", readTime: 14, imageName: "santa", backgroundColor: .cardSlate, textColor: .white)
                        ArticleCard(tag: "Science", tagIcon: "atom", title: "What teachers and schools should know about...", readTime: 3, imageName: "school", backgroundColor: .cardYellow, textColor: .black)
                        ArticleCard(tag: "Tutorial", tagIcon: "book", title: "When one sec gets too annoying: how to...", readTime: 3, imageName: "annoying", backgroundColor: .cardOrange, textColor: .black)
                    }
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
                
                // Category Lists
                VStack(alignment: .leading) {
                    Text("Categories").font(.title2).fontWeight(.bold)
                        .padding(8)
                    VStack(spacing: 0) {
                        ForEach(0..<labels.count) { i in
                            CategoryRow(title: labels[i], systemImage: icons[i])
                            if i < labels.count - 1 { Divider()
                                    .padding(.leading, 52)
                                    .padding(.trailing, 16)
                            }
                        }
                    }.background(.quinary, in: RoundedRectangle(cornerRadius: 20))
                }
                .padding(.horizontal, 16)
                Spacer()
            }.navigationTitle("Tips")
                .safeAreaBar(edge: .top) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<labels.count) { i in
                                CategoryChip(title: labels[i], systemImage: icons[i])
                                    .padding(1)
                            }
                            CategoryChip(title: "FAQ", systemImage: "questionmark.bubble")
                                .padding(1)
                        }.padding(EdgeInsets(top: 2, leading: 16, bottom: 2, trailing: 16))
                    }
                }
        }.scrollEdgeEffectStyle(.soft, for: .top)
    }
}

#Preview {
    TipsView()
}
