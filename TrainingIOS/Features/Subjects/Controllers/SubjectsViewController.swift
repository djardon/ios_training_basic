//
//  SubjectsViewController.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit

class SubjectsViewController: UIViewController {
    // MARK: - IBOutlets -
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    // MARK: - Properties -
    private var mSubjects: Array<Subject>? = nil
    private let mCellSpacing: CGFloat = 16.0
    
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Configure table view options
        configureTableView()
        
        // Load default data
        loadData()
        
        // Reload data to show loaded data
        mCollectionView.reloadData()
    }
    
    // MARK: - Configuration -
    private func configureTableView() {
        // Set self view controller as delegate and data source of collectionView
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
    }
    
    // MARK: - Configuration -
    private func loadData() {
        mSubjects = defaultSubjects
    }
}


// Extension SubjectsViewController to add Segue functions
extension SubjectsViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get parameter as IndexPath
        guard let selectedPosition = sender as? IndexPath else {
            return
        }
        
        // If destination controller is SubjectDetail
        if let destinationController = segue.destination as? SubjectDetailViewController {
            // Get selected item data and send to SubjectDetail controller
            destinationController.delegate = self
            destinationController.data = mSubjects?[selectedPosition.row]
        }
    }
}


// SubjectsViewController to implement UICollectionView delegate and data source
extension SubjectsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mSubjects?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SubjectViewCell.mIdentifier,
                                                      for: indexPath) as! SubjectViewCell
        // Get student data for row
        if let subject = mSubjects?[indexPath.row] {
            // Configure cell view with student data
            cell.configureCell(data: subject)
        }
        
        return cell
    }
    
    // UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
     
        let size = collectionView.frame.size.width / 2
        return CGSize(width: size - mCellSpacing,
                      height: size - mCellSpacing)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return mCellSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return mCellSpacing
    }
    
    // UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Launch segue navigation with segueToDetail identifier value
        // and send indexPath as parameter
        performSegue(withIdentifier: segueToDetail,
                     sender: indexPath)
    }
}


// Extension SubjectsViewController to add Segue functions
extension SubjectsViewController: SubjectDetailDelegate {
    func onDelete(subject: Subject?) {
        guard let subjectDelete = subject else {
            return
        }
        
        mSubjects?.removeAll(where: { $0.name == subjectDelete.name })
        mCollectionView.reloadData()
    }
}

