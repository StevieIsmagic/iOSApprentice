//
//  ContentView.swift
//  LoginScreen
//
//  Created by Steven Ocampo on 3/27/20.
//  Copyright © 2020 StevenOcampo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack {
                Text("Hello there")
                    .fontWeight(.black)
                    .foregroundColor(.green)
                Button(action: {
                    print("You logged in =)")
                }) {
                    Text("PRESS ME BUTTONS")
                }
            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

