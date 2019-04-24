//
//  TeachersViewController.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import UIKit

class TeachersViewController: UIViewController {
    // MARK: - IBOutlets -
    @IBOutlet weak var mTableView: UITableView!
    
    // MARK: - Properties -
    private var mTeachers: Array<Teacher>? = nil
    
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Configure table view options
        configureTableView()
        
        // Load default data
        loadData()
        
        // Reload table data to show loaded data
        mTableView.reloadData()
    }
    
    // MARK: - Configuration -
    private func configureTableView() {
        // Set self view controller as delegate and data source of tableView
        mTableView.delegate = self
        mTableView.dataSource = self
        
        // Configure tableView style without separator line between cells
        // and hide empty defaults cells
        mTableView.separatorStyle = .none
        mTableView.tableFooterView = UIView()
    }
    
    // MARK: - Configuration -
    private func loadData() {
        mTeachers = defaultTeachers
    }
}

// TeachersViewController to implement UITableView delegate and data source
extension TeachersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mTeachers?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return TeacherViewCell.mEstimatedHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TeacherViewCell.mIdentifier,
                                                 for: indexPath) as! TeacherViewCell
        // Get student data for row
        if let teacher = mTeachers?[indexPath.row] {
            // Configure cell view with student data
            cell.configureCell(data: teacher)
        }
        
        return cell
    }
}
