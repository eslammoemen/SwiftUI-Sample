//
//  Modifiers.swift
//  SwiftUISample
//
//  Created by Eslam Mohamed on 02/02/2024.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    private var backgroundColor: Color
    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
    }
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20, weight: .semibold))
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .foregroundStyle(Color.white)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .shadow(radius: 10)
    }
        

}
struct Modifiers: View {
    var body: some View {
        VStack(spacing: 10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .withDefaultViewModifier(backColor: .red)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            withDefaultViewModifier(backColor: .orange)
        }
        .padding()
        
    }
}
extension View {
    func withDefaultViewModifier(backColor: Color) -> some View {
        modifier(DefaultButtonViewModifier(backgroundColor: backColor))
        
    }
}

#Preview {
    Modifiers()
}
