//
//  Concurrency.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct ConcurrencyExample: CodeExample {
    
    /// Run the example code 
    func run() {
        divider()
        print("\(#fileID) \(#function)")

        print("Starting concurrent task...")
        
        Task {
            let result = await performAsyncWork()
            print("Async work result: \(result)")
        }
        
        print("Run function completed.")
    }
    
    func report() -> String {
        return "Report: ConcurrencyExample executed."
    }
    
    private func performAsyncWork() async -> String {
        try? await Task.sleep(nanoseconds: 1_000_000_000) // Simulate work with a 1-second delay
        return "Work is done!"
    }
}
