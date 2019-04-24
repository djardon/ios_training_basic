//
//  SubjectViewCell.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit

class SubjectViewCell: UICollectionViewCell {
    static let mIdentifier: String = String(describing: SubjectViewCell.self)
    static let mEstimatedHeight: CGFloat = 150.0
    
    // MARK: - Outlets -
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mTitleLabel: UILabel!
    @IBOutlet weak var mYearLabel: UILabel!

    
    // MARK: - Lifecycle -
    override func prepareForReuse() {
        mImageView?.image = nil
        mTitleLabel?.text = ""
        mYearLabel?.text = ""
    }
    
    // MARK: - Configure methods -
    func configureCell(data: Subject) {
        configure(image: data.photo)
        configure(title: data.name)
        configure(year: data.year)
    }
    
    
    // MARK: - Private methods -
    private func configure(image: String?) {
        guard let photo = image else {
            return
        }
        
        mImageView?.image = UIImage(named: photo)
    }

    private func configure(title: String?) {
        mTitleLabel?.text = title
    }
    
    private func configure(year: Date?) {
        mYearLabel?.text = year?.toFormattedString(with: defaultDateFormatYear)
    }
}
