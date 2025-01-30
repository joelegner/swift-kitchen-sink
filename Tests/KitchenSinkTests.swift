//
//  KitchenSinkTests.swift
//  KitchenSink
//
//  Created by Joe Legner on 1/30/25.
//
import XCTest
@testable import KitchenSink

final class KitchenSinkTests: XCTestCase {
    
    /// Tests the `divider()` function to ensure it prints an 80-character line.
    func testDividerOutput() {
        let expectedOutput = String(repeating: "=", count: 80) + "\n"
        
        // Capture printed output
        let output = captureStandardOutput {
            divider()
        }
        
        XCTAssertEqual(output, expectedOutput, "divider() should print an 80-character line of '='.")
    }
    
    /// Tests the initialization of `BendingMoment` instances.
    func testBendingMomentInitialization() {
        let moment = BendingMoment(50.0)
        XCTAssertEqual(moment.moment, 50.0, "BendingMoment should store the correct moment value.")
    }
    
    /// Tests the `CustomStringConvertible` conformance of `BendingMoment`.
    func testBendingMomentDescription() {
        let moment = BendingMoment(75.5)
        XCTAssertEqual(moment.description, "75.5 kip-ft", "BendingMoment description should match the expected format.")
    }
    
    /// Tests the `Equatable` protocol for `BendingMoment`.
    func testBendingMomentEquality() {
        let M1 = BendingMoment(100.0)
        let M2 = BendingMoment(100.0)
        let M3 = BendingMoment(200.0)
        
        XCTAssertEqual(M1, M2, "Equal BendingMoment instances should be considered equal.")
        XCTAssertNotEqual(M1, M3, "Different BendingMoment instances should not be equal.")
    }
    
    /// Tests the `Comparable` protocol for `BendingMoment`.
    func testBendingMomentComparison() {
        let M1 = BendingMoment(50.0)
        let M2 = BendingMoment(100.0)
        
        XCTAssertTrue(M1 < M2, "M1 should be less than M2.")
        XCTAssertFalse(M2 < M1, "M2 should not be less than M1.")
        XCTAssertTrue(M2 > M1, "M2 should be greater than M1.")
        XCTAssertFalse(M1 > M2, "M1 should not be greater than M2.")
    }
    
    /// Tests encoding and decoding of `BendingMoment` using `Codable`.
    func testBendingMomentCodable() throws {
        let moment = BendingMoment(150.0)
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        
        let data = try encoder.encode(moment)
        let decodedMoment = try decoder.decode(BendingMoment.self, from: data)
        
        XCTAssertEqual(moment, decodedMoment, "Encoded and decoded BendingMoment instances should be equal.")
    }
    
    // Helper function to capture printed output
    private func captureStandardOutput(_ closure: () -> Void) -> String {
        let originalOutput = dup(STDOUT_FILENO)
        let pipe = Pipe()
        dup2(pipe.fileHandleForWriting.fileDescriptor, STDOUT_FILENO)
        
        closure()
        
        fflush(stdout)
        dup2(originalOutput, STDOUT_FILENO)
        close(originalOutput)
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: data, encoding: .utf8) ?? ""
    }
}
