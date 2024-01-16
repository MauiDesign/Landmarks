//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by Aroha Design on 16/01/24.
//

import SwiftUI

struct BadgeSymbol: View {
    static let symbolColor = Color(red:79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
    
    var body: some View {
        GeometryReader { geometry in
            Path {path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width * 0.5
                let topWidth = width * 0.226
                let topHeight = height * 0.488
                
                // draw snowcap
                path.addLines([
                    CGPoint(x: middle, y: spacing), // top-middle (start-end)
                    CGPoint(x: middle - topWidth, y: topHeight - spacing), // bottom-left
                    CGPoint(x: middle, y: topHeight / 2 + spacing), // bottom middle
                    CGPoint(x: middle + topWidth, y: topHeight - spacing), // bottom-right
                    CGPoint(x: middle, y: spacing)]) // top-middle (start-end)
                
                path.move(to: CGPoint(x: middle, y:topHeight / 2 + spacing * 3))
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
                    CGPoint(x:spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
            }
            .fill(Self.symbolColor)
        }
    }
}

#Preview {
    BadgeSymbol()
}
