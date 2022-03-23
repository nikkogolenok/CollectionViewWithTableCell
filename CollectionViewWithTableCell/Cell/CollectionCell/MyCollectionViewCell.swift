//
//  MyCollectionViewCell.swift
//  CollectionViewWithTableCell
//
//  Created by Никита Коголенок on 23.03.22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variable
    static let idetnifier = "MyCollectionViewCell"
    
    // MARK: - Outlet
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!

    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Methods
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    public func configure(with model: Model) {
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
    }
}
