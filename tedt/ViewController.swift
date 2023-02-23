//
//  ViewController.swift
//  tedt
//
//  Created by Витя Рябко on 23/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let justHeaderView = JustView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupUI()
        
    }
    
    private func setupUI() {
        self.view.backgroundColor = #colorLiteral(red: 0.5206928849, green: 0.7044381499, blue: 1, alpha: 1)
        
        self.view.addSubview(justHeaderView)
        
        justHeaderView.translatesAutoresizingMaskIntoConstraints = false
        setConstraints()
    }
}

extension ViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            justHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30),
            justHeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            justHeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            justHeaderView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}

