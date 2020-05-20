//
//  KeyboardActionProtocol.swift
//  keyboard
//
//  Created by Steve Gigou on 2020-05-14.
//  Copyright © 2020 Novesoft. All rights reserved.
//


// MARK: - KeyStateDelegate

/// Protocol used to interact with the input field.
protocol KeyboardActionProtocol: class {
  
  /**
   Should insert some text.
   
   - parameter text: Text to insert.
   */
  func insert(text: String)
  
  /**
   Optional. Replaces the given amount on characters by the given text.
   */
  func replace(charactersAmount: Int, by text: String)
  
  /**
   Delete backward 1 character.
   */
  func deleteBackward()
  
  /**
   Delete several characters backward.
   
   - parameter amount: Amount of characters to delete.
   */
  func deleteBackward(amount: Int)
  
  /**
   Needs to switch keyboard
   */
  func nextKeyboard()
  
  /**
   Optional. Called when the shift key state changed.
   */
  func shiftStateChanged(newState: Key.State)
  
  /**
   Optional. Called when the alt key state changed.
   */
  func altStateChanged(newState: Key.State)
  
}


// MARK: - Extension

extension KeyboardActionProtocol {
  
  func shiftStateChanged(newState: Key.State) {}
  func altStateChanged(newState: Key.State) {}
  func replace(charactersAmount: Int, by text: String) {}
  
}