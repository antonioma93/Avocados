//
//  SettingsView.swift
//  Avocados
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

struct SettingsView: View {
	@State private var enableNotifications: Bool = true
	@State private var backgroundRefresh: Bool = false

    var body: some View {
		VStack(alignment: .center, spacing: 0) {
			//MARK: - HEADER
			VStack(alignment: .center, spacing: 5) {
				Image("avocado")
					.resizable()
					.scaledToFit()
					.padding(.top)
					.frame(width: 100, height: 100, alignment: .center)
					.shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
				Text("Avocados".uppercased())
					.font(.system(.title, design: .serif))
					.fontWeight(.bold)
					.foregroundColor(Color("ColorGreenAdaptive"))
			}
			.padding()

			Form {
				//MARK: - SECTION 1
				Section(header: Text("General Settings")) {
					Toggle(isOn: $enableNotifications) {
						Text("Enable Notifications")
					}

					Toggle(isOn: $backgroundRefresh) {
						Text("Background refresh")
					}
				}

				//MARK: - SECTION 2
				Section(header: Text("Application")) {
					if enableNotifications {
						HStack {
							Text("Product").foregroundColor(.gray)
							Spacer()
							Text("Avocado Recipes")
						}
						HStack {
							Text("Compatibility").foregroundColor(.gray)
							Spacer()
							Text("iPhone & iPad")
						}
						HStack {
							Text("Developer").foregroundColor(.gray)
							Spacer()
							Text("Antonio Massa")
						}
						HStack {
							Text("Designer").foregroundColor(.gray)
							Spacer()
							Text("Antonio Massa")
						}
						HStack {
							Text("Website").foregroundColor(.gray)
							Spacer()
							Text("antoniomassa.com")
						}
						HStack {
							Text("Version").foregroundColor(.gray)
							Spacer()
							Text("1.0.0")
						}
					} else {
						HStack {
							Text("Personal message").foregroundColor(.gray)
							Spacer()
							Text("Happy coding!")
						}
					}
				}
			}
		}
		.frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
