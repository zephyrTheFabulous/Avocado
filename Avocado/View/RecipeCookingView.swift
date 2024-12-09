//
//  RecipeCookingView.swift
//  Avocado
//
//  Created by Anthony on 1/11/24.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - PROPERTIES
  
  var recipe: Recipe
  
    //MARK: - BODY
  var body: some View {
    HStack(alignment: .center, spacing: 12) {
      HStack(alignment: .center, spacing: 2) {
        Image(systemName: "person.2")
        Text("Serves: \(recipe.serves)")
      }
      HStack(alignment: .center, spacing: 2) {
        Image(systemName: "clock")
        Text("Prep: \(recipe.preparation)")
      }
      HStack(alignment: .center, spacing: 2) {
        Image(systemName: "flame")
        Text("Cooking: \(recipe.cooking)")
      }
    } //: MAIN HSTACK
    .font(.footnote)
    .foregroundStyle(.gray)
  }
}

#Preview {
  RecipeCookingView(recipe: recipesData[0])
}
