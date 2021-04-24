//
//  CardsContainerView.swift
//  Set
//
//  Created by baluhman on 4/1/21.
//

import UIKit

class CardsContainerView: UIView {
    
    // MARK: - Subviews
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        return stackView
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    // MARK: - API
    func setNumberOfRows(_ number: Int) {
        // TODO: - привести в порядок метод
        for rows in 1...number {
            let cardsRowsView = UIStackView()
            cardsRowsView.axis = .horizontal
            cardsRowsView.distribution = .fillEqually
            cardsRowsView.spacing = 10
            
            for i in 1...3 {
                let cardView = UIButton()
                cardView.backgroundColor = .cyan
                cardsRowsView.addArrangedSubview(cardView)
                print("\(i)")
            }
            
            cardsRowsView.backgroundColor = .blue
            print("\(rows)")
            contentStackView.addArrangedSubview(cardsRowsView)
        }
    }
}

// MARK: - Setup UI
private extension CardsContainerView {
    
    func setupViews() {
        addSubviews()
        setAppearance()
        makeConstaraints()
    }
    
    func addSubviews() {
        addSubview(contentStackView)
    }
    
    func setAppearance() {
        backgroundColor = .green
    }
    
    func makeConstaraints() {
        contentStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
}
