//
//  ContactsScreen.swift
//  PersonListUI
//
//  Created by Artem Bazhanov on 14.06.2021.
//

import SwiftUI

struct ContactsScreen: View {
    let persons: [Person]
    
    var body: some View {

        NavigationView {
            HStack {
                List(persons) { person in
                    NavigationLink(destination: PersonDetailScreen(person: person)) {
                        PersonRow(person: person)
                    }
                }
                .navigationBarTitle("Contact List")
            }
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen(persons: Person.getContactList())
    }
}
