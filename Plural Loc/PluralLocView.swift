//
//  PluralLocView.swift
//  Plural Loc
//
//  Created by Alexander von Below on 13.05.24.
//  Copyright © 2024 Alexander von Below. All rights reserved.
//

import SwiftUI

struct PluralLocView: View {
    @State private var value = 1
    let step = 5
    let range = 0...Int.max

    var body: some View {
        VStack(alignment: .center) {
            ScrollView {
                ForEach(0...30, id:\.self) { index in
                    Text("\(index) bottles of beer")
                }
            }
            Stepper(
                value: $value,
                in: range
            ) {
                Text("\(value) bottles of beer")
            }
                .padding()
        }
    }
}

#Preview("German)") {
    PluralLocView()
        .environment(\.locale, .init(identifier: "de"))
}

#Preview("English") {
    PluralLocView()
        .environment(\.locale, .init(identifier: "en"))
}

#Preview("Ukrainian") {
    PluralLocView()
        .environment(\.locale, .init(identifier: "uk"))
}

#Preview("Chinese") {
    PluralLocView()
        .environment(\.locale, .init(identifier: "zh-Hans"))
}

