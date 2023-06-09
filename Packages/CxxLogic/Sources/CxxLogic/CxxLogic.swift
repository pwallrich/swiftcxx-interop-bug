// The Swift Programming Language
// https://docs.swift.org/swift-book

import cxxLibrary

public class Calculator {
    private var logic: CxxLibraryLogic = .init()

    public init() {}

    public func calculate() -> Int {
        Int(logic.calculate())
    }
}
