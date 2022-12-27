//
//  Content.swift
//  MovieListSample
//
//  Created by 1 on 2022/12/26.
//

import UIKit
import SnapKit


struct Content: Decodable {
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType: String, Decodable {
        case basic
        case main
        case large
        case rank
    }
}

struct Item: Decodable {
    let description: String
    let imageName: String
    
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
