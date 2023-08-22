//
//  ViewController.swift
//  ProgTableViewPrac
//
//  Created by DA MAC M1 157 on 2023/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let homeTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.allowsSelection = true
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(homeTableView)
        homeTableView.delegate = self
        homeTableView.dataSource = self
        composeConstraints()
    }
    
    func composeConstraints() {
        let composeHomeTableViewConstraints = [
            homeTableView.topAnchor.constraint(equalTo: view.topAnchor),
            homeTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        
        NSLayoutConstraint.activate(composeHomeTableViewConstraints)
    }
}

//MARK: - Table delegates and data source
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
             fatalError("Error cannot dequeue Custom Cell in a tableView")
            
        }
        
        cell.profImage.image = UIImage(systemName: "person.circle.fill")
        cell.firstName.text = "Carrington"
        return cell
    }
    
    
    
}
