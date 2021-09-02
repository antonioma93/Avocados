//
//  FactModel.swift
//  Avocados
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

//MARK: - FACT MODEL

struct Fact: Identifiable {
	var id = UUID()
	var image: String
	var content: String
}
