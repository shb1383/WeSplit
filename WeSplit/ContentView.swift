//
//  ContentView.swift
//  WeSplit
//
//  Created by Syrene Haber Bartolome on 2024/09/16.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) { Text($0)
                    }
                }
            }
            .navigationTitle("Select a student")
        }
    }
}

#Preview {
    ContentView()
}
