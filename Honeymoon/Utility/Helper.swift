//
//  Helper.swift
//  Honeymoon
//
//  Created by M_2195552 on 2023-06-06.
//

import SwiftUI

enum DragState {
  case inactive
  case pressing
  case dragging(translation: CGSize)
  
  var translation: CGSize {
    switch self {
    case .inactive, .pressing:
      return .zero
    case .dragging(let translation):
      return translation
    }
  }
  
  var isDragging: Bool {
    switch self {
    case .dragging:
      return true
    case .pressing, .inactive:
      return false
    }
  }
  
  var isPressing: Bool {
    switch self {
    case .pressing, .dragging:
      return true
    case .inactive:
      return false
    }
  }
}

let feedback = UIImpactFeedbackGenerator(style: .medium)
