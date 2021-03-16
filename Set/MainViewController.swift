//
//  MainViewController.swift
//  Set
//
//  Created by baluhman on 3/16/21.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private lazy var topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .gray
       return stackView
    }()
    
    private lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .green
       return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        addSubviews()
        makeConstraints()
    }
    
    private func addSubviews() {
        view.addSubview(topStackView)
        view.addSubview(bottomStackView)
    }
    
    private func makeConstraints() {
        topStackView.snp.makeConstraints { make in
            make.top.left.right.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(380)
        }
        
        bottomStackView.snp.makeConstraints { make in
            make.top.equalTo(topStackView.snp.bottom).offset(20)
            make.bottom.left.right.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
