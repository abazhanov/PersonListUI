//
//  PersonRow.swift
//  PersonListUI
//
//  Created by Artem Bazhanov on 15.06.2021.
//

import SwiftUI

struct PersonRow: View {
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.fullName)")
            Spacer()
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: .init(id: 1, name: "Artem", surname: "Bazhanov", email: "info@artembazhanov.com", phoneNumber: "+7(910)392-90-41"))
    }
}
