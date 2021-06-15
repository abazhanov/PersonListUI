//
//  ContactDetailRow.swift
//  PersonListUI
//
//  Created by Artem Bazhanov on 15.06.2021.
//

import SwiftUI

struct ContactDetailRow: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(person.phoneNumber)")
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.blue)
                            Text("\(person.email)")
                        }
                    }
                }
            }
            .navigationBarTitle("Contact List")
            
        }
    }
    
}

struct ContactDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailRow(persons: Person.getContactList())
    }
}
