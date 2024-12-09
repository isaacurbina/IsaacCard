//
//  InfoView.swift
//  IsaacCard
//
//  Created by Isaac Urbina on 12/9/24.
//

import SwiftUI

struct InfoView: View {
	let text: String
	let imageName: String
	
	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.padding(16)
			.frame(height: 82)
			.foregroundColor(.white)
			.overlay(
				HStack {
					Image(systemName: imageName).foregroundColor(.green)
					Text(text).foregroundColor(.black)
				}
			)
	}
}

#Preview {
	InfoView(text: "Hello", imageName: "phone.fill")
		.previewLayout(.sizeThatFits)
}
