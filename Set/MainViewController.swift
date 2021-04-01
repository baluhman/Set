//
//  MainViewController.swift
//  Set
//
//  Created by baluhman on 3/16/21.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private lazy var topContainerView: CardsContainerView = {
        let view = CardsContainerView()
        view.backgroundColor = .green
        return view
    }()
    
    private lazy var bottomContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

// UI
extension MainViewController {
    
    private func setupViews() {
        addSubviews()
        makeConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(topContainerView)
        view.addSubview(bottomContainerView)
    }
    
    private func makeConstraints() {
        topContainerView.snp.makeConstraints { make in
            make.top.left.right.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(582)
        }
        
        bottomContainerView.snp.makeConstraints { make in
            make.top.equalTo(topContainerView.snp.bottom).offset(20)
            make.bottom.left.right.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
