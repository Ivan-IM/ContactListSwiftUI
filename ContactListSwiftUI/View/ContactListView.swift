//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Иван Маришин on 10.08.2021.
//

import SwiftUI

struct ContactListView: View {
    @State var personsList: [Person]
    
    var body: some View {
        NavigationView {
            List(personsList) { person in
                NavigationLink(person.fullName, destination: ContactInfoView(person: person))
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(personsList: Person.getPersonList())
    }
}
