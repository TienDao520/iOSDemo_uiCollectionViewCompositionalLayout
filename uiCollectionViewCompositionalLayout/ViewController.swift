//
//  ViewController.swift
//  uiCollectionViewCompositionalLayout
//
//  Created by Tien Dao on 2022-05-24.
//

import UIKit

class ViewController: UIViewController {
    
    enum section {
        case main
    }

    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataSource: UICollectionViewDiffableDataSource<section,Int>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = configLayout()
    }
    
    private func configLayout() -> UICollectionViewCompositionalLayout {
        
        //Configurate item
        //itemSize related to the whole size of the section.
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        // Margin the item
        item.contentInsets = NSDirectionalEdgeInsets(top:5, leading: 5, bottom: 5, trailing: 5)
        
        //Configurate group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalWidth(0.5))
//        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //basic grid
        // let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: item, count: 2)
        
        //Vertical layout
        // let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: item, count: 3)
        
        //sub group
        let subgroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(0.5)), subitem: item, count: 2)
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: subgroup, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        //Added spacing between the section
        section.interGroupSpacing = 30
        
        return UICollectionViewCompositionalLayout(section: section)
        
    }
    

    


}

