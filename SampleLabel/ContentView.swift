//
//  ContentView.swift
//  SampleLabel
//
//  Created by Alexander v. Below on 27.10.20.
//

import SwiftUI

struct ContentView: View {

    let attributedText = { () -> NSAttributedString in
        let input = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacus neque, dignissim at ante id, ornare semper felis. Quisque imperdiet mi in dolor congue, eget ultrices nisl tristique. Proin id enim auctor, porta ante et, malesuada arcu. Ut maximus ex non justo tempor ornare at vel nisi. Sed eget dignissim dolor, vel sagittis urna. Mauris vel sollicitudin ante, a eleifend diam. Integer pharetra commodo tempus. Duis id lectus eu arcu rhoncus tincidunt a et dui. Pellentesque tempus, libero ullamcorper feugiat malesuada, augue libero dictum mauris, in ornare nisl ante quis quam. Sed convallis nulla in odio ultricies efficitur. Nulla nec tellus eget ex feugiat porta quis ac mi. Fusce ultrices enim urna, non pharetra eros posuere et. Integer at aliquet felis, nec aliquam orci. Mauris lobortis malesuada dolor id lobortis. Sed pulvinar convallis lacus vestibulum rutrum. Nam placerat ipsum mi, at tempor odio ultricies vel.

Phasellus scelerisque in quam non porta. Morbi suscipit, purus sed gravida suscipit, elit arcu ultrices libero, id maximus leo lorem non dolor. Vivamus non semper nunc. Curabitur et faucibus felis. Aliquam aliquam eget quam at tristique. Integer iaculis risus ac vulputate dignissim. Integer rutrum velit felis, ut iaculis erat lacinia nec.

Etiam aliquet tincidunt mi, ut volutpat metus faucibus vel. Vestibulum tincidunt, neque gravida bibendum aliquam, nisi neque consequat felis, semper hendrerit quam erat vel tellus. Pellentesque tristique porta felis, ut congue nisi volutpat ut. Integer sed arcu eget nisl fermentum porttitor. Cras bibendum mauris vel purus tristique, quis tempus odio congue. Phasellus et laoreet urna. Morbi quis neque convallis, semper sapien quis, rhoncus libero. Aliquam et lacus lacus. Fusce sit amet nibh vel dui imperdiet ullamcorper a at tellus. Sed convallis ultricies mi, at gravida orci sodales sed. Aenean justo dolor, ultrices et dolor non, rhoncus commodo purus.

Fusce non mi rhoncus, accumsan tortor in, viverra tortor. Phasellus sit amet turpis nec magna placerat placerat. Ut vestibulum libero sem, iaculis cursus libero vehicula nec. Vestibulum in odio leo. In tempor nec quam sit amet gravida. Ut egestas felis sed faucibus pulvinar. Vivamus luctus lacus ut odio ornare feugiat. Suspendisse potenti. Mauris molestie semper sem a interdum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed suscipit quam sed est volutpat, ac molestie orci rutrum. Morbi sodales turpis sed semper laoreet.

Nam ornare hendrerit blandit. In lobortis eget mi nec dignissim. Aenean tincidunt id erat quis porta. Maecenas a mollis mauris. Integer lacinia luctus lorem, nec fringilla velit tempus in. Suspendisse ornare mauris nec posuere ultrices. Duis pharetra non ante a lacinia. Pellentesque non leo feugiat, mollis tortor vel, aliquet nunc.
"""
        return NSAttributedString(string: input)
    }()


    var body: some View {
        ScrollView {
            AttributedText(text: attributedText)
                .accessibility(identifier: "Label")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
