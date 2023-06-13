import Bindings
import SwiftUI

public struct ExampleView: View {
  public init() {}

  public var body: some View {
    Text("Bindings version: " + BindingsGetVersion())
  }
}
