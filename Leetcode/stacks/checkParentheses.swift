//
//  checkParentheses.swift
//  
//
//  Created by Begzod on 28/06/21.
//

import Foundation

var testString1 = "h((e))llo(world)()"

func checkParentheses(_ string: String) -> Bool {
  var stack = Stack<Character>()
  
  for character in string {
    if character == "(" {
      stack.push(character)
    } else if character == ")" {
      if stack.isEmpty {
        return false
      } else {
        stack.pop()
      }
    }
  }
  return stack.isEmpty
}

checkParentheses(testString1) // returns true
