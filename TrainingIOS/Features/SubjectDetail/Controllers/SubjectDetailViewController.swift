//
//  SubjectDetailViewController.swift
//  TrainingIOS
//
//  Created by David Jardon on 20/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit


protocol SubjectDetailDelegate {
    func onDelete(subject: Subject?)
}


class SubjectDetailViewController: UIViewController {
    // MARK: - IBOutlets -
    @IBOutlet weak var mImageView: UIImageView!
    @IBOutlet weak var mTitleLabel: UILabel!
    @IBOutlet weak var mYearLabel: UILabel!
    @IBOutlet weak var mDescriptionText: UITextView!

    // MARK: - IBActions -
    @IBAction func onDeletePressed(sender: UIButton) {
        showAlert(title: NSLocalizedString("title_alert", comment: ""),
                  message: NSLocalizedString("message_alert", comment: ""),
                  actionAccept: { _ in
                    self.navigateBack()
                  })
    }
    
    // MARK: - Properties -
    var delegate: SubjectDetailDelegate?
    var data: Subject?
    
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Configure views
        configure(image: data?.photo)
        configure(title: data?.name)
        configure(year: data?.year)
        configure(description: data?.description)
    }
    
    deinit {
        // Clear delegate reference
        delegate = nil
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
    
    private func configure(description: String?) {
        mDescriptionText?.text = description
    }
    
    private func navigateBack() {
        // Notify delegate to delete this element
        delegate?.onDelete(subject: data)
        
        // Navigate back to previous view controller
        navigationController?.popViewController(animated: true)
    }
}
