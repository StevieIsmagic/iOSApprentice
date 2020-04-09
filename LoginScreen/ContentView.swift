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
    @State var sliderValue: Double = 50.0
    @State var target: Int = Int.random(in: 1...100)
    
    // User interface content and layout
    var body: some View {
        VStack {
            Spacer()
            
            // Target row
            HStack {
                Text("Put the bullseye as close as you can to target:")
                Text("\(self.target)")
            }
            
            Spacer()
    
            // Slider row
            // Added views for the slider row here
            HStack {
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100/*@END_MENU_TOKEN@*/)
                Text("100")
            }
            
            Spacer()
            
            // Button row
            Button(action: {
                print("Points Awarded: \(self.pointsForCurrentRound())")
                self.alertIsVisible = true
            }) {
                Text("HIT ME ?")
            }
            .alert(isPresented: self.$alertIsVisible) {
                Alert(title: Text("Hello there !"),
                      message: Text("The slider's current value is \(Int(self.sliderValue))."),
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
            .padding(.bottom, 20)
        }
        
    }
    // Methods
    // =======
    func pointsForCurrentRound() -> Int {
        var difference: Int
        if Int(self.sliderValue.rounded()) > self.target {
            difference = Int(self.sliderValue.rounded()) - self.target
        } else if self.target > Int(self.sliderValue.rounded()) {
            difference = self.target - Int(self.sliderValue.rounded())
        } else {
            difference = 0
        }
        return 100 - difference
    }
}

// Preview
// =======
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

