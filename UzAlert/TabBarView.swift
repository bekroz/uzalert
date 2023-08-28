//
//  TabBarView.swift
//  UzAlert
//
//  Created by Bek Roz on 07/05/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            SplashScreenView()
                .tabItem {
                    Label("First Tab", systemImage: "magnifyingglass")
                }
            SearchListView()
                .tabItem {
                    Label("Screen 2", systemImage: "wand.and.stars")
                }
            FormView()
                .tabItem {
                    Label("Screen 3", systemImage: "person.crop.circle")
                }
        }
        .onAppear {
//            let appearance = UITabBarAppearance()
//            UITabBar.appearance().scrollEdgeAppearance = appearance
//            UIApplication.shared.statusBarStyle = .default
        }
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
#endif
