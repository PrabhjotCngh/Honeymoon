//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by M_2195552 on 2023-06-05.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.headline)
      .padding()
      .frame(minWidth: 0, maxWidth: .infinity)
      .background(Capsule().fill(.pink))
      .foregroundColor(.white)
  }
}
