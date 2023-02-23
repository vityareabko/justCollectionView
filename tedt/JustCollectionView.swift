//
//  justCollectionView.swift
//  tedt
//
//  Created by Витя Рябко on 23/02/23.
//

import UIKit

class JustCollectionView : UICollectionView {
    
    private let layout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: layout)
        register(justCollectionViewCell.self, forCellWithReuseIdentifier: justCollectionViewCell.identifier)

        config()
        
        dataSource = self
        delegate = self
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        self.backgroundColor = .green
        
        setLayout()
    }
    
    func setLayout() {
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .horizontal
    }
}

extension JustCollectionView : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: justCollectionViewCell.identifier, for: indexPath) as? justCollectionViewCell else {
            fatalError("**** Failed dequeue cell into justCollectionView ")
        }
        return cell
    }
}

extension JustCollectionView : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: self.frame.width * 0.3 , height: self.frame.height * 0.3)
    }
}

extension JustCollectionView : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("DEBUG PRINT:", indexPath)
    }
}
