//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Иван Маришин on 10.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State var personsList = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactListView(personsList: personsList)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            SectionContactListView(personsList: personsList)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
