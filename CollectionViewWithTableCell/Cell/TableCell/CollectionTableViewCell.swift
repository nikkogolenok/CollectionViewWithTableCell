//
//  CollectionTableViewCell.swift
//  CollectionViewWithTableCell
//
//  Created by Никита Коголенок on 23.03.22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    // MARK: - Variable
    static let identifier = "CollectionTableViewCell"
    var models = [Model]()
    
    // MARK: - Outlet
    @IBOutlet weak var collectionView: UICollectionView!

    // MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        createDelegate()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Methods
    func createDelegate() {
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.idetnifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionTableViewCell", bundle: nil)
    }
    
    
    func configure(with models: [Model]) {
        self.models = models
        collectionView.reloadData()
    }
}
