//
//  UIKLabel.swift
//  BehindTheLines
//
//  Created by Alexander v. Below on 26.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import SwiftUI

struct AttributedText: UIViewRepresentable {

  var text: NSAttributedString

  func makeUIView(context: Context) -> UILabel {
    let label = UILabel()
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    return label
  }

  func updateUIView(_ label: UILabel, context: Context) {
    label.attributedText = text
  }
}
