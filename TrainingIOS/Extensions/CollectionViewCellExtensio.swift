//
//  CollectionViewCellExtensio.swift
//  TrainingIOS
//
//  Created by David Jardon on 24/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit

// Extension of TableViewCell
extension UICollectionViewCell {
    
    // Add a custom method in TableViewCell class to
    // confugure corner radius and shadow opacity
    func configure(cornerRadius: CGFloat = 8.0,
                   shadowOpacity: Float = 0.6,
                   with color: CGColor = UIColor.gray.cgColor,
                   view: UIView?) {
        view?.layer.cornerRadius = cornerRadius
        view?.layer.shadowColor = color
        view?.layer.shadowOffset = CGSize.zero
        view?.layer.shadowRadius = cornerRadius
        view?.layer.shadowOpacity = shadowOpacity
    }
}
