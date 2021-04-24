//
//  CardView.swift
//  Set
//
//  Created by baluhman on 4/1/21.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    private func setupView() {
        backgroundColor = .red
    }
}

