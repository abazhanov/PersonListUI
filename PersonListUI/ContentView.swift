//
//  ContentView.swift
//  PersonListUI
//
//  Created by Artem Bazhanov on 14.06.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsScreen(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            ContactDetailRow(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Full info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
