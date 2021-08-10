//
//  ContactInfoView.swift
//  ContactListSwiftUI
//
//  Created by Иван Маришин on 10.08.2021.
//

import SwiftUI

struct ContactInfoView: View {
    
    var person: Person
    
    var body: some View {
        Form {
            Section {
                Image(person.lastName)
                    .resizable()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3))
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
            .navigationTitle(Text("\(person.fullName)"))
        }
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person(firstName: "bla", lastName: "Gogol", phone: 12345, email: "bla@bla.com"))
    }
}
