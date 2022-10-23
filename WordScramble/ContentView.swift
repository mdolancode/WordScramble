//
//  ContentView.swift
//  WordScramble
//
//  Created by Matthew Dolan on 2022-10-23.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
        // 4.
        List {
            Text("Static row")
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static row")

        // 3.
//        List(people, id: \.self) {
//            Text($0)
        
        // 2.
//        List(0..<5) {
//            Text("Dynamic row \($0)")

        // 1.
//            List {
    //            Section("Section 1") {
    //                Text("Staic row 1")
    //                Text("Staic row 2")
    //            }
    //
    //            Section("Section 2") {
    //                ForEach(0..<5) {
    //                    Text("Dynamic row \($0)")
    //                }
    //            }
    //
    //            Section("Section 3") {
    //                Text("Staic row 3")
    //                Text("Staic row 4")
    //            }
        }
        .listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
