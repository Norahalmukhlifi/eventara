//
//  splash.swift
//  eventara
//
//  Created by RIM ABDULLAH BUJEIR on 01/04/1445 AH.
//

import SwiftUI

struct splash: View {
    @State private var isActive = false
    @State private var logoScale: CGFloat = 1.0
    var body: some View {
        ZStack{
            Color("Back")
                .ignoresSafeArea()
            
            VStack {
                
                Image("logo") // Replace "your_logo_name" with the actual image name.
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .scaleEffect(logoScale) // Apply the scale effect
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 2)) {
                            logoScale = 1.2 // Increase the scale to zoom in
                        }
                    }
                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            .background(NavigationLink("", destination: MainPage(), isActive: $isActive))
        }
    }
}
#Preview {
    splash()
}
