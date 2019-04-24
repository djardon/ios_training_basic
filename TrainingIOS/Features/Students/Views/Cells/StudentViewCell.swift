//
//  StudentViewCell.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit

class StudentViewCell: UITableViewCell {
    static let mIdentifier: String = String(describing: StudentViewCell.self)
    static let mEstimatedHeight: CGFloat = 150.0

    // MARK: - Outlets -
    @IBOutlet weak var mView: UIView?
    @IBOutlet weak var mImageView: UIImageView?
    @IBOutlet weak var mNameLabel: UILabel?
    @IBOutlet weak var mEmailLabel: UILabel?
    
    
    // MARK: - Lifecycle -
    override func prepareForReuse() {
        mImageView?.image = nil
        mNameLabel?.text = ""
        mEmailLabel?.text = ""
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configure(view: mView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
    // MARK: - Configure methods -
    func configureCell(data: Student) {
        configure(image: data.photo)
        configure(name: data.name, surname: data.surname)
        configure(email: data.email)
    }
    
    
    // MARK: - Private methods -
    private func configure(image: String?) {
        guard let photo = image else {
            return
        }
        
        mImageView?.image = UIImage(named: photo)
        mImageView?.layer.cornerRadius = (self.mImageView?.frame.size.width ?? 0) / 2
    }
    
    private func configure(name: String?, surname: String?) {
        var studentName = ""
        if let name = name {
            studentName = name
        }
        
        if let surname = surname {
            studentName = studentName.isEmpty ? surname:" \(surname)"
        }
        
        mNameLabel?.text = studentName
    }
    
    private func configure(email: String?) {
        mEmailLabel?.text = email
    }
}
