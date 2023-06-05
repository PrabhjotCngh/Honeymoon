//
//  File.swift
//  Honeymoon
//
//  Created by M_2195552 on 2023-06-05.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.pink)
  }
}
