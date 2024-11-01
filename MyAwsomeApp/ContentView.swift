//
//  ContentView.swift
//  MyAwsomeApp
//
//  Created by Harvey E Rhody on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var msgString = "You are Great!"
    @State private var flipflop = true
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .foregroundStyle(.orange)
            Text(msgString)
            
            Button("Press Me") {
                
                if flipflop {
                    msgString = "You are Happy"
                }
                else {
                    msgString = "You are Great!"
                }
                flipflop.toggle()
            }
            

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
