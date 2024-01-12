//
//  GradientView.swift
//  ImageFeed
//
//  Created by Kudryashov Andrey on 13.01.2024.
//
import Foundation
import UIKit

class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func setupGradient() {
        let ypBackgrounColor50 = UIColor(named: "YP Background (iOS)")
        let ypWhiteColor50 = UIColor(named: "YP White (Alpha 50) (iOS)")

        self.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [UIColor(named: "YP Background (iOS)"), UIColor(named: "YP White (Alpha 50) (iOS)")]
    }
}
