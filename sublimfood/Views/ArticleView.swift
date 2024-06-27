//
//  ArticleView.swift
//  sublimfood
//
//  Created by Sourinda Sivilay on 27/06/2024.
//

import SwiftUI

struct ArticleView: View {
    var article: ArticleModel
    var otherArticles: [ArticleModel]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image("boulettes_pdt")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
                VStack(alignment: .leading) {
                    Text(article.caption)
                        .font(.caption)
                        .padding(.vertical, 10)
                    
                    Text(article.title)
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text(article.content)
                    
                    Text("Autres astuces")
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(otherArticles) {article in
                                RecipeCardView(image: article.image, title: article.title, displayCircleHeart: false, isHeartFilled: false)
                            }
                        }
                    }
                }
                .padding(25)
            }
        }
        .ignoresSafeArea()
    }
}

var caption: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var title: String = "Boulettes de Pommes de Terre"

var image: String = "boulettes_pdt"

var content: String = "Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit Neque porro quisquam est qui dolorem ipsum quia dolor si amet, consectetur, adipisci velit"

var articles: [ArticleModel] = [
    ArticleModel(title: title, image: image, caption: caption, content: content ),
    ArticleModel(title: title, image: image, caption: "", content: ""),
    ArticleModel(title: title, image: image)
]

#Preview {
    ArticleView(article: articles[0], otherArticles: articles)
}
