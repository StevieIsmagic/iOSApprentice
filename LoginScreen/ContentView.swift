//
//  ContentView.swift
//  LoginScreen
//
//  Created by Steven Ocampo on 3/27/20.
//  Copyright © 2020 StevenOcampo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Properties
    // ==========
    
    // User interface views
    @State var alertIsVisible: Bool = false
    
    // User interface content and layout
    var body: some View {
        VStack {
            Spacer()
            
            // Target row
            HStack {
                Text("How you feelin today ?")
                Text("one hunnerd")
            }
            
            Spacer()
    
            // Slider row
            // Added views for the slider row here
            HStack {
                Text("1")
                Slider(value: /*@START_MENU_TOKEN@*/.constant(10)
/*@END_MENU_TOKEN@*/)
                Text("100")
            }
            
            Spacer()
            
            // Button row
            Button(action: {
                print("You console.logged me =)")
                self.alertIsVisible = true
            }) {
                Text("HIT ME ?")
            }
            .alert(isPresented: self.$alertIsVisible) {
                Alert(title: Text("Hello there !"),
                      message: Text("My first Alert pop-up!"),
                      dismissButton: .default(Text("Awesome!")))
            }
            
            Spacer()
            
            // Score row
            // Added views for the score, rounds, and start / info buttons here
            HStack {
                Button(action: {}) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score: ")
                Text("99999")
                Spacer()
                Text("Round: ")
                Text("999")
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
        }
        
    }
    // Methods
    // =======
}

// Preview
// =======
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

