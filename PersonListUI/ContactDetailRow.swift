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
        List { 
            Section(header: Text("aaa")) {
                Text("Row")
                Text("Row")
            }
        }
        
    }
}

struct ContactDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailRow(persons: Person.getContactList())
    }
}
