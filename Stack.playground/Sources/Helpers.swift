import Foundation

public func example(of description: String, _ action: () -> ()) {
    print("---Example of \(description)---")
    action()
    print()
}
