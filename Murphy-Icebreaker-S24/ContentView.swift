//
//  ContentView.swift
//  Murphy-Icebreaker-S24
//
//  Created by Alex Murphy on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    @State var txtFirstName: String = ""
    @State var txtLastName: String = ""
    @State var txtPrefName: String = ""
    @State var txtAnswer: String = ""
    @State var txtQuestion: String = "Test Question"
    
    
    var body: some View {
        VStack {
            Text("Icebreaker")
                .font(.system(size: 40))
                .bold()
            Text("Built with SwuitUI")
            
            TextField("First Name",
                      text: $txtFirstName)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/) // Terrible way to make a border
            
            TextField("Last Name",
                      text: $txtLastName)
            TextField("Preferred Name",
                      text: $txtPrefName)
            Button(action: {
                setRandomQuestion() // TODO: Write
            }, label: {
                Text("Get a new random question")
                    .font(.system(size: 20))
            })
            
            TextField("Answer",
                      text: $txtAnswer)
            
            Button(action: {
                writeStudentToFirebase()
            }, label: {
                Text("Submit")
                    .font(.system(size: 20))
            })
        }
        .font(.largeTitle)
        .padding()
        .multilineTextAlignment(.center) // Horizontal centering
        .autocorrectionDisabled() // Argument not required
    }
    
    func setRandomQuestion() { // no need to write void
        // print() shows in the previews debug window by
        // dragging the bottom right icon upwards
        print(txtFirstName)
    }
                   
    func writeStudentToFirebase() {
        print("Submit button pressed")
        print("First Name \(txtFirstName)")
        print("Last Name \(txtLastName)")
        print("Preferred Name \(txtPrefName)")
        print("Answer \(txtAnswer)")
    }
}

#Preview {
    ContentView()
}
