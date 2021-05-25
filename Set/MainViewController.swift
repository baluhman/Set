//
//  MainViewController.swift
//  Set
//
//  Created by baluhman on 3/16/21.
//

import UIKit
import SnapKit

private struct Constant {
    let topContainerViewBackgroundColor: UIColor = .green
    let bottomContainerViewBackgroundColor: UIColor = .yellow
    let topContainerViewHeight: CGFloat = 582
    let bottomContainerViewTopOffset: CGFloat = 20
    // TODO: потом убрать когда появится слой бизнес-логики (Model)
    let maxNumberTopContainerRows = 8
    let maxCardInRow = 3
}

class MainViewController: UIViewController {
    
    private let constant = Constant()
    
    // MARK: - Subviews
    private lazy var topContainerView: CardsContainerView = {
        let view = CardsContainerView()
        return view
    }()
    
    // TODO: - создать класс для вью управления игрой
    private lazy var bottomContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = constant.bottomContainerViewBackgroundColor
        return view
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

// MARK: - Setup UI
extension MainViewController {
    
    private func setupViews() {
        addSubviews()
        makeConstraints()
        setGameUI()
    }
    
    private func addSubviews() {
        view.addSubview(topContainerView)
        view.addSubview(bottomContainerView)
    }
    
    private func makeConstraints() {
        topContainerView.snp.makeConstraints { make in
            make.top.left.right.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(constant.topContainerViewHeight)
        }
        
        bottomContainerView.snp.makeConstraints { make in
            make.top.equalTo(topContainerView.snp.bottom).offset(constant.bottomContainerViewTopOffset)
            make.bottom.left.right.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

// MARK: - GameUILogic
extension MainViewController {
    // TODO: - возможно потом поменять механизм с помощью бизнес-логики
    private func setGameUI() {
        topContainerView.configureWith(rowsCount: constant.maxNumberTopContainerRows, maxCardViewsCountInRow: constant.maxCardInRow)
    }
}
