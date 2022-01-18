//
//  ViewController.swift
//  Task1_W5_M4
//
//  Created by Aziz on 16/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }

    private var namesArray = ["AKINA","MAKITA","INIRA","KALINA","MALINA","AKELLA","ALEGGA","SIRENA","RAKETA","ELEKTRA"]

    private func setupSubviews(){
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let index = indexPath.row
        let cell = UITableViewCell()
        cell.textLabel?.text = namesArray[index]
        
        return cell
    }
    
    
}
