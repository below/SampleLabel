//
//  UIKLabel.swift
//  BehindTheLines
//
//  Created by Alexander v. Below on 26.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import SwiftUI

class LabelContainerView: UIView {
    private(set) lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("This is SwiftUI Country. Don't instantiate stuff from NIBs")
    }

    private func setUp() {
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)

        label.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

struct AttributedText: UIViewRepresentable {

  var text: NSAttributedString

  func makeUIView(context: Context) -> LabelContainerView {
    let container = LabelContainerView()
    return container
  }

  func updateUIView(_ container: LabelContainerView, context: Context) {
    container.label.attributedText = text
  }
}
