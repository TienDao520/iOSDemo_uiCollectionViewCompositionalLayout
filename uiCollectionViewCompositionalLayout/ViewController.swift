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
        // Do any additional setup after loading the view.
    }


}

