//
//  SplashScreenView.swift
//  UzAlert
//
//  Created by Bek Roz on 07/05/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack {
                Text("UzAlert")
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                Image(systemName: "magnifyingglass")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .font(.system(size: 100))
                    .padding(.top, 250)
                    .opacity(0.5)
                    
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
