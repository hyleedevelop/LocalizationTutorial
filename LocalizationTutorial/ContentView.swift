//
//  ContentView.swift
//  LocalizationTutorial
//
//  Created by Eric on 1/5/24.
//

import SwiftUI

struct ContentView: View {
    
    let company: String = "Apple"
    let one: Int = 1
    let ten: Int = 10
    let distance: Double = 1.234567

    var body: some View {
        VStack(spacing: 10) {
            Text("No Localization")
            
            Text("Hello, \(company)!")
            
            Text("I love you 💕")
            
            Text("\(one) item(s)")
            
            Text("\(ten) item(s)")
            
            Text("Distance: \(distance) km")
        }
        .padding(.vertical, 30)
    }

}

#Preview {
    ContentView()
}
