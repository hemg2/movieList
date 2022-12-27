//
//  ContentCollectionViewHeader.swift
//  MovieListSample
//
//  Created by 1 on 2022/12/27.
//

import UIKit


class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        sectionNameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        sectionNameLabel.textColor = .black
        sectionNameLabel.sizeToFit()
        
        addSubview(sectionNameLabel)
        
        sectionNameLabel.snp.makeConstraints({
            $0.centerY.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
        })
    }
}
