//
//  SectionContactListView.swift
//  ContactListSwiftUI
//
//  Created by Иван Маришин on 10.08.2021.
//

import SwiftUI

struct SectionContactListView: View {
    @State var personsList: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(personsList) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text(String(person.phone))
                        }
                        HStack {
                            Image(systemName: "mail")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("\(person.email)")
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct SectionContactListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionContactListView(personsList: Person.getPersonList())
    }
}
