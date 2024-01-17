//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Aroha Design on 15/01/24.
//

import CoreGraphics

struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment:CGFloat = 0.085
    // Hexagon draw anti clock wise
    static let segments = [
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),//Bottom-middle (start curve vertex)
            curve:   CGPoint(x: 0.40, y: 0.05),//Bottom-middle (end curve vertex)
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),// Bottom-left (start curve vertex)
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),// Bottom-left (end curve vertex)
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 + adjustment),// Top-right (start curve vertex)
            curve:   CGPoint(x: 0.05, y: 0.80 + adjustment),// Top-right (end curve vertex)
            control: CGPoint(x: 0.00, y: 0.75 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),// top-middle (start curve vertex)
            curve:   CGPoint(x: 0.60, y: 0.95),// top-middle (end curve vertex)
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 + adjustment),// top-left (start curve vertex)
            curve:   CGPoint(x: 1.00, y: 0.70 + adjustment),// top-left (end curve vertex)
            control: CGPoint(x: 1.00, y: 0.75 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),// Botton-left (start curve vertex)
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),// Top-left (start curve vertex)
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
}
