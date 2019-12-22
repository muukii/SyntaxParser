import SPMUtility
import SwiftSyntax
import Darwin
import Foundation

let parser = ArgumentParser(
  commandName: "SyntaxParser",
  usage: "",
  overview: "",
  seeAlso: nil
)

let inputArg = parser.add(positional: "input", kind: String.self, usage: "File path to .swift file")

let result = try parser.parse(Array(CommandLine.arguments.dropFirst()))

guard let path = result.get(inputArg) else {
  exit(1)
}

let url = URL(fileURLWithPath: path)
let sourceFile = try SyntaxParser.parse(url)
Rewriter().visit(sourceFile)
