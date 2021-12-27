//
//  TableViewCell.swift
//  Doublle Collection
//
//  Created by evo on 27/12/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    var list : [Product] = [Product]()
    func configure(items: [Product]) {
        list = items

        collectionView.delegate = self
        collectionView.dataSource = self

        setLayout()
    }

    func setLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal

        flowLayout.itemSize = CGSize(width: self.collectionView.frame.width / 2 - 10,
                                     height: self.collectionView.frame.width / 2 - 10)

        flowLayout.minimumLineSpacing = 5
        flowLayout.minimumInteritemSpacing = 10

        self.collectionView.setCollectionViewLayout(flowLayout, animated: true)
    }
}

extension TableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        list.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = .systemGray6
        return cell
    }


}
