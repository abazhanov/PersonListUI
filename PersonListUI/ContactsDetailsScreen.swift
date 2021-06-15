//
//  ContactsDetailsScreen.swift
//  PersonListUI
//
//  Created by Artem Bazhanov on 14.06.2021.
//

import SwiftUI

struct ContactsDetailsScreen: View {
    let persons: [Person]
    
    var body: some View {
        
        HStack {
            Text("\(persons.count)")
            Spacer()
        }
    }
}

struct ContactsDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDetailsScreen(persons: Person.getContactList())
    }
}
