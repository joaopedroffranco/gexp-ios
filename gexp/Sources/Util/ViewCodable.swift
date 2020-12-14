//
//  ViewCodable.swift
//  gexp
//
//  Created by Joao Pedro Fabiano Franco on 14/12/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import UIKit

public protocol ViewCodable where Self: UIView {
    func buildViewHierarchy()
    func setupConstraints()
    func additionalSetup()
    func setupView()
}

extension ViewCodable where Self: UIView {
    public func setupView() {
        buildViewHierarchy()
        setupConstraints()
        additionalSetup()
    }
}

