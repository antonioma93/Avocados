//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

struct RipeningStagesView: View {
	var ripeningStage: [Ripening] = ripeningData

    var body: some View {
		ScrollView(.horizontal) {
			VStack {
				HStack(alignment: .center, spacing: 25) {
					ForEach(ripeningStage) { item in
						RipeningView(ripening: item)
					}
				}
				.padding(.vertical)
				.padding(.horizontal, 25)
				Spacer()
			}
		}
		.edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStage: ripeningData)
    }
}
