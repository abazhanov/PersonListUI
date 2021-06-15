//
//  PersonDetailScreen.swift
//  PersonListUI
//
//  Created by Artem Bazhanov on 15.06.2021.
//

import SwiftUI

struct PersonDetailScreen: View {
    let person: Person
    
    var body: some View {
        VStack {
            List {
                Section(header: Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width / 3,
                                   height:UIScreen.main.bounds.width / 3)
                            
                            .padding()
                ){
                    HStack {
                        Image(systemName: "phone")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                            
                        Text("\(person.phoneNumber)")
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "envelope")
                            .resizable()
                            .frame(width: 30, height: 23)
                            .foregroundColor(.blue)
                        Text("\(person.email)")
                    }
                }
            }
        }
        .padding()
        .navigationBarTitle("Person detail")
        
    }
}

struct PersonDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailScreen(person: .init(id: 1, name: "Artem", surname: "Bazhanov", email: "info@artembazhanov.com", phoneNumber: "+7(910)392-90-41"))
    }
}
