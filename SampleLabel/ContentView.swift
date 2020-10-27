//
//  ContentView.swift
//  SampleLabel
//
//  Created by Alexander v. Below on 27.10.20.
//

import SwiftUI

struct ContentView: View {
    let attributedText = NSAttributedString(string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus non mauris in erat condimentum facilisis. Aenean id placerat metus, vel pulvinar orci. Nam convallis lacus ut tellus vestibulum tincidunt. Donec ultricies ultricies sagittis. Mauris ac lorem sed nisi congue suscipit. Curabitur dapibus ipsum et sem elementum, nec tincidunt lorem facilisis. Duis est lacus, dictum eget ultrices at, ornare nec massa. Sed faucibus imperdiet dui ac finibus. Curabitur pulvinar consequat consequat. Phasellus tempor vel est a aliquet. Proin feugiat odio tellus, quis mattis augue pellentesque sed. Suspendisse maximus massa ut odio dapibus sollicitudin. Fusce sit amet velit vitae magna faucibus ultricies.")

    var body: some View {
        AttributedText(text: attributedText)
            .accessibility(identifier: "Label")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
