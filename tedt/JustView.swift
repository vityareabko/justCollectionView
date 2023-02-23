//
//  JustView.swift
//  tedt
//
//  Created by Витя Рябко on 23/02/23.
//

import UIKit

class JustView: UIView {

    let justCollectionView = JustCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.backgroundColor = .red
        
            self.addSubview(justCollectionView)
            justCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        
        setConstraints()
    }

}

extension JustView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            justCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            justCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            justCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 10),
            justCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
