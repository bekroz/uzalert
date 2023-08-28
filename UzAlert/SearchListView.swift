//
//  SearchListView.swift
//  UzAlert
//
//  Created by Bek Roz on 07/05/23.
//

import SwiftUI

struct SearchListView: View {
    var body: some View {
        NavigationView {
            content
            .navigationBarTitle("Search Results")
        }
        .overlay(alignment:.topTrailing) {
            lastUpdated
        }
    }
}

extension SearchListView {
    private var content: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            searchResults
        }
    }
    
    private var lastUpdated: some View {
        Text("Updated: \(Date.now.formatted(date: .omitted, time: .shortened))")
            .foregroundColor(.white)
            .padding(20)
    }
    
    private var searchResults: some View {
        VStack {
            List {
                Section("Found") {
                    HStack {
                        Image(systemName: "person.fill")
                            .padding()
                            .background(.quaternary)
                            .cornerRadius(50)
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text("John Doe")
                            Text("20.02.2000")
                        }
                        Spacer()
                        Text("Status:")
                            .foregroundColor(.gray)
                        Text("Found")
                            .foregroundColor(.green)
                    }
                }
                
                Section("On-Search") {
                    Text("On-Search View")
                }
            }
        }
    }
}

struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
