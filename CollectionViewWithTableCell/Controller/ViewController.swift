//
//  ViewController.swift
//  CollectionViewWithTableCell
//
//  Created by Никита Коголенок on 23.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variable
    var models = [Model]()
    
    // MARK: - Outlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Live Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDelegate()
    }
    
    // MARK: - Methods
    func createDelegate() {
        tableView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "Fifth", imageName: "image_5"))
    }
}

