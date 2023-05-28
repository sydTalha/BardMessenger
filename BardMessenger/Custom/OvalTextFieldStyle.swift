//
//  OvalTextFieldStyle.swift
//  BardMessenger
//
//  Created by Rizwan on 5/27/23.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.12), Color.gray.opacity(0.12)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
}
