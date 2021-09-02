//
//  HeaderModel.swift
//  Avocados
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

//MARK: - HEADER MODEL

struct Header: Identifiable {
	var id = UUID()
	var image: String
	var headline: String
	var subheadline: String
}

