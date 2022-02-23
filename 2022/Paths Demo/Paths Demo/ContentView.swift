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
            .stroke(.yellow)
            .background(.gray)
        }.frame(width: 300, height: 300, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
