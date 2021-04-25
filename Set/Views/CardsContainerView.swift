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
    func configureWith(rowsCount: Int, maxCardViewsCountInRow: Int) {
        for _ in 1...rowsCount {
            let rowsStackView = UIStackView()
            configureRowsStackView(rowsStackView)
            addCardViews(rowsCount: maxCardViewsCountInRow, to: rowsStackView)
            contentStackView.addArrangedSubview(rowsStackView)
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
    
    func configureRowsStackView(_ view: UIStackView) {
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 10
        view.backgroundColor = .blue
    }
    
    func addCardViews(rowsCount: Int, to view: UIStackView) {
        for _ in 1...rowsCount {
            let cardButton = UIButton()
            cardButton.backgroundColor = .cyan
            view.addArrangedSubview(cardButton)
        }
    }
}
