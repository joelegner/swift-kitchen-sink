/// Prints a visual divider line consisting of 80 equal signs.
/// - This function helps separate output sections in the console.
/// - Uses `String(repeating:count:)` to generate the divider dynamically.
func divider() {
    print(String(repeating: "=", count: 80))
}

// Example Usage:
// divider()  // Prints: "========================================"
