//
//  AppView.swift
//  Avocados
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
		TabView {
			AvocadosView()
				.tabItem {
					Image("tabicon-branch")
					Text("Avocado")
				}
			ContentView()
				.tabItem {
					Image("tabicon-book")
					Text("Recipes")
				}
			RipeningStagesView()
				.tabItem {
					Image("tabicon-avocado")
					Text("Ripening")
				}
			SettingsView()
				.tabItem {
					Image("tabicon-settings")
					Text("Settings")
				}
		}
		.edgesIgnoringSafeArea(.top)
		.accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
