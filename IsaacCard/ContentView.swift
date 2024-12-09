//
//  ContentView.swift
//  IsaacCard
//
//  Created by Isaac Urbina on 12/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color(red: 0.282, green: 0.494, blue: 0.69) // #487eb0
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("isaac")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 200, height: 200)
					.clipShape(Circle())
					.overlay(
						Circle()
							.stroke(
								.white,
								style: StrokeStyle(lineWidth: 5, lineCap: .round)
							)
					)
				Text("Isaac Urbina")
					.font(Font.custom("Glory", size: CGFloat(40)))
					.bold()
					.foregroundColor(.white)
				Text("Android / iOS Developer")
					.font(.system(size: 25))
					.foregroundColor(.white)
				Divider()
				InfoView(text: "+1 (646) 552-7827", imageName:  "phone.fill")
				InfoView(text: "isaacurbina89@gmail.com", imageName: "envelope.fill")
			}
        }
    }
}

#Preview {
    ContentView()
}


