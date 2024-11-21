import CMath

@main struct Entry {
  static func main() throws {
    print("gamma(5) =", tgamma(5.0))
    print("2^3 =", pow(2.0, 3.0))
  }
}