//
//  ContentView.swift
//  ProjectBreathe
//
//  Created by Daniel O'Leary on 3/2/20.
//  Copyright © 2020 Impulse Coupled Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State private var isBreathing = false
	@State private var angle = 0
	
	var body: some View {
		VStack {
			Spacer()
			ZStack {
				ForEach(0...400, id: \.self) { angle in
					Image("Oval")
						.offset(x: 2, y: 0)
						.rotationEffect(Angle.degrees(self.isBreathing ? Double(self.angle + angle) : 0), anchor: .bottom)
						.scaleEffect(self.isBreathing ? 1.5: 1, anchor: .bottomTrailing)
				}
				.animation(Animation.easeInOut(duration: 3.0).repeatCount(10, autoreverses: true))
			}
			Spacer()
			Button("Breate") {
				self.isBreathing.toggle()
			}
		}
	}
	
}



struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
