  //
  //  ContentView.swift
  //  Avocado
  //
  //  Created by Anthony on 30/10/24.
  //

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES

  var headers: [Header] = headersData
  var facts: [Fact] = factsData
  var recipes: [Recipe] = recipesData

    //MARK: - BODY
  var body: some View {
    VStack {
      ScrollView {
        VStack(alignment: .center, spacing: 20) {
            //MARK: - HEADER

          ScrollView(.horizontal){
            HStack(alignment: .top, spacing: 0){
              ForEach(headers) { item in // iteration of the array of Header structs
                HeaderView(header: item)
              }
            } //: HSTACK
          } //: HORIZONTAL SCROLL

            //MARK: - DISHES
          Text("Avocado Dishes")
            .modifier(TitleModifier())

          DishesView()
            .frame(maxWidth: 640) // for iPad

            //MARK: - AVOCADO FACTS
          Text("Avocado Facts")
            .modifier(TitleModifier())
          ScrollView(.horizontal) {
            HStack(alignment: .top, spacing: 60) {
              ForEach(facts) { item in
                FactsView(fact: item)
              }
            }
            .padding(.vertical, 16)
            .padding(.leading, 60)
            .padding(.trailing, 20)
          } //: SCROLL

            //MARK: - RECIPE CARDS
          Text("Avocado Recipes")
            .modifier(TitleModifier())

          VStack(alignment: .center, spacing: 20) {
            ForEach(recipes) { item in
              RecipeCardView(recipe: item)
            }
          }
          .frame(maxWidth: 640) // for iPad
          .padding(.horizontal, 16)

            //MARK: - FOOTER
          VStack(alignment: .center, spacing: 20) {
            Text("All About Avocados")
              .modifier(TitleModifier())

            Text("Everything you wanted to know about avocados but were afraid to ask.")
              .font(.system(.body, design: .serif))
              .multilineTextAlignment(.center)
              .foregroundStyle(.gray)
              .frame(minHeight: 60)
          } //: VSTACK
          .frame(maxWidth: 640) // for iPad
          .padding()
          .padding(.bottom, 85)
        } //: VSTACK

      } //: VERTICAL SCROLL
      .ignoresSafeArea()
    } //: VSTACK
  }
}

#Preview {
  ContentView()
}
