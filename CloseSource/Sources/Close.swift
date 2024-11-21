// Sources/HelloModule/HelloProvider.swift

import Foundation
public final class CloseClass {
  public init() {}

  public func greet(name: String) -> String {
    return "Hello, \(name)!"
  }
}

public struct CloseStruct {
  public let name: String

  public init(name: String) {
    self.name = name
  }
}

public func doCloseStuff() {
  print("Closing...")
}
