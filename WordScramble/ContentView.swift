//
//  ContentView.swift
//  WordScramble
//
//  Created by Matthew Dolan on 2022-10-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func test() {
        // 1.
//        let input = "a b c"
//        let letters = input.components(separatedBy: " ")
        
        // 2.
//        let input = """
//a
//b
//c
//"""
//        let letters = input.components(separatedBy: "\n")
//        let letter = letters.randomElement()
//
//        let trimmed = letter?.trimmingCharacters(in: .whitespaces)
        
        // 3.
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: " en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
