//
//  ContentView.swift
//  Paths Demo
//
//  Created by Bryce Ter Haar on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { g in
            Path { p in
                p.move(to: CGPoint(x: g.size.width / 2, y: g.size.height / 2))
                p.addLine(to: CGPoint(x: g.size.width / 10 * 7, y: g.size.height / 5))
                p.addLine(to: CGPoint(x: g.size.width / 8 * 7, y: g.size.height / 4 * 3))
                p.closeSubpath()
                p.addLine(to: CGPoint(x: g.size.width / 10 * 3.25, y: g.size.height / 5))
                p.addLine(to: CGPoint(x: g.size.width / 8, y: g.size.height / 4 * 3))
                p.closeSubpath()
            }
            .fill(RadialGradient(colors: [.newColor1, .newColor2, .newColor3], center: UnitPoint(x: 0.5, y: 0.25), startRadius: 40, endRadius: 210))
        }.background(.gray)
        .frame(width: 300, height: 300, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let oldColor1 = Color(UIColor.systemYellow)
    static let newColor1 = Color("color1")
    
    static let oldColor2 = Color(UIColor.systemPink)
    static let newColor2 = Color("color2")
    
    static let oldColor3 = Color(UIColor.systemPurple)
    static let newColor3 = Color("color3")
}
