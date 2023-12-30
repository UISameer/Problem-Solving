import Foundation

class Solution {
    func interpret(_ command: String) -> String {
        
        var outputStr = ""
        outputStr = command.replacingOccurrences(of: "()", with: "o").replacingOccurrences(of: "(al)", with: "al")
        return outputStr
    }
    
//    func interpret(_ command: String) -> String {
//        var stack: Character = " "
//        var result: [String] = []
//        
//        for char in command {
//            print(stack)
//            switch char {
//                case "(":
//                    stack = char
//                case ")" where stack == "(":
//                    result.append("o")
//                default:
//                    if char != ")" {
//                        stack = char
//                        result.append(String(char))
//                    }
//            }
//        }
//        
//        return result.joined()
//    }
    
    // Using Reduce
//    func interpret(_ command: String) -> String {
//        var prevStr = ""
//        return command.reduce(into: "") {
//            let str: String
//            switch $1 {
//                case "G":
//                    str = "G"
//                case ")":
//                    str = prevStr == "(" ? "o" : "al"
//                default:
//                    prevStr = "\($1)"
//                    str = ""
//            }
//            return $0 += str
//        }
//    }
}

let command = "(al)G(al)()()G"
print(Solution().interpret(command))
