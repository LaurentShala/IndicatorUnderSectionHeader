//
//  CollectionViewController.swift
//  IndicatorUnderSectionHeader
//
//  Created by Laurent Shala on 9/29/17.
//  Copyright © 2017 Laurent Shala. All rights reserved.
//

import UIKit

private let cellReuseIdentifier = "Cell"
private let headerReuseIdentifier = "Header"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
        collectionView?.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerReuseIdentifier)
        collectionView?.backgroundColor = .white
        
        title = "Collection View"
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath)
        cell.backgroundColor = .blue
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 40, right: 0)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerReuseIdentifier, for: indexPath)
        
        view.backgroundColor = .green
        
        return view
    }
    
}
