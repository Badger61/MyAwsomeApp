//
//  ContentView.swift
//  MyAwsomeApp
//
//  Created by Harvey E Rhody on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var msgString = "You are Great!"
    @State private var logo = "swift"
    @State private var flipflop1 = true
    @State private var flipflop2 = true
    
    var body: some View {
        VStack {
            Image(systemName: logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .foregroundStyle(.orange)
            Text(msgString)
            
            HStack {
                // Button to change the displayed message
                Button("Message") {
                    
                    if flipflop1 {
                        msgString = "You are Happy"
                    }
                    else {
                        msgString = "You are Great!"
                    }
                    flipflop1.toggle()
                }
                
                // Button to change the displayed image
                Button("Logo") {
                    
                    if flipflop2 {
                        logo = "globe"
                    }
                    else {
                        logo = "swift"
                    }
                    flipflop2.toggle()
                }
                
            }
            

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
