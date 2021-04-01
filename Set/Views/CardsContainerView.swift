//
//  CardsContainerView.swift
//  Set
//
//  Created by baluhman on 4/1/21.
//

import UIKit

class CardsContainerView: UIView {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    func addViews(_ views: [CardView]) {
        
    }
}
