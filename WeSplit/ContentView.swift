//
//  ContentView.swift
//  WeSplit
//
//  Created by Kitwana Akil on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    
    let students = ["Harry", "Herminoe", "Ron"]
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    VStack(alignment: .leading) {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Hello, world!")
                        
                        Button("Tap Count: \(tapCount)") {
                            tapCount += 1
                        }
                        
                        TextField("Enter your name: ", text: $name)
                        Text("Your name is: \(name)")
                        
                    }
                    .padding()
                }
                .navigationTitle("SwiftUI")
                
                Form {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) { Text($0) }
                    }
                }
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
