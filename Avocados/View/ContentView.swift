//
//  ContentView.swift
//  Avocados
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES

  var headers: [Header] = headersData
  var fact: [Fact] = factData
  var recipes: [Recipe] = recipesData

  var body: some View {
	ScrollView(.vertical, showsIndicators: false) {
	  VStack(alignment: .center, spacing: 20) {
		// MARK: - HEADER

		ScrollView(.horizontal, showsIndicators: false) {
		  HStack(alignment: .top, spacing: 0) {
			ForEach(headers) { item in
			  HeaderView(header: item)
			}
		  }
		}

		// MARK: - DISHES
		Text("Avocado Dishes")
		  .fontWeight(.bold)
		  .modifier(TitleModifier())
		DishesView()
		  .frame(maxWidth: 640)

		//MARK: - FACTS AVOCADO
		Text("Avocado Facts")
			.fontWeight(.bold)
			.modifier(TitleModifier())

		ScrollView(.horizontal) {
			HStack(alignment: .top, spacing: 60) {
				ForEach(fact) { item in
					FactsView(fact: item)
				}
			}
			.padding(.vertical)
			.padding(.leading, 20)
			.padding(.trailing, 20)

		}
		//MARK: - RECIPE CARDS
		Text("Avocado Recipes")
			.fontWeight(.bold)
			.modifier(TitleModifier())
		VStack(alignment: .center, spacing: 20) {
			ForEach(recipes) { item in
				RecipeCardView(recipe: item)
			}
		}
		.frame(maxWidth: 640)
		.padding(.horizontal)
		
		// MARK: - FOOTER
		VStack(alignment: .center, spacing: 20) {
		  Text("All About Avocados")
			.fontWeight(.bold)
			.modifier(TitleModifier())
		  Text("Everything you wanted to know about avocados but were too afraid to ask.")
			.font(.system(.body, design: .serif))
			.multilineTextAlignment(.center)
			.foregroundColor(Color.gray)
			.frame(minHeight: 60)
		}
		.frame(maxWidth: 640)
		.padding()
		.padding(.bottom, 85)
	  }
	}
	.edgesIgnoringSafeArea(.all)
	.padding(0)
  }
}

struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(.title, design: .serif))
			.foregroundColor(Color("ColorGreenAdaptive"))
			.padding(8)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(headers: headersData, fact: factData, recipes: recipesData)
			.previewDevice("iPhone 12 Pro")
    }
}
