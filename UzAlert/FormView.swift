//
//  FormView.swift
//  UzAlert
//
//  Created by Bek Roz on 07/05/23.
//

import SwiftUI

struct FormView: View {
    var body: some View {
        NavigationView {
            Form {
                Text("Select photos")
                Section {
                    Text("dasdmlasmd")
                } header: {
                    HStack {
                        Image(systemName: "person.fill")
                        Text("Peronal Details")
                    }
                }

                Text("Select photos")
            }
            .navigationTitle("Add")
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
