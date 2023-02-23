//
//  justCollectionViewCell.swift
//  tedt
//
//  Created by Витя Рябко on 23/02/23.
//

import UIKit

class justCollectionViewCell: UICollectionViewCell {
    static let identifier = "justCellIdentifier"
    
    private let justLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.text = "Error"
        return label
    }()
    
    let justImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sunny")
//        image.contentMode = .scaleAspectFit
        image.backgroundColor = .secondarySystemBackground
        return image
    }()

    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
    
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.backgroundColor = .blue
        
        self.addSubview(justLabel)
        self.addSubview(justImageView)
    
        justLabel.translatesAutoresizingMaskIntoConstraints = false
        justImageView.translatesAutoresizingMaskIntoConstraints = false
    
        setConstraints()
    }
    
}


extension justCollectionViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            justLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            justLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            justLabel.heightAnchor.constraint(equalToConstant: 30),
            
            justImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10),
            justImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            justImageView.heightAnchor.constraint(equalToConstant: 30),
            justImageView.widthAnchor.constraint(equalToConstant: 30),
            
            
        ])
    }
}
