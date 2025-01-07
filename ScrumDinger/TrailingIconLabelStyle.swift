//
//  TrailingIconLabelStyle.swift
//  ScrumDinger
//
//  Created by Prabhdeep Singh on 03/01/25.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

struct SomeextraStruct: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { 
        Self() //returrning confriming type here which is TrailingIconLabelStyle
    }
}

