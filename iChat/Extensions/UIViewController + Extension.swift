//
//  UIViewController + Extension.swift
//  iChat
//
//  Created by Филипп on 5/13/20.
//  Copyright © 2020 Filipp. All rights reserved.
//

import UIKit


extension UIViewController {
     func configure<T: SelfConfiguringCell, U: Hashable>(collectionView: UICollectionView, cellType: T.Type, with value: U, for indexPath: IndexPath) -> T {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellType.reuseId, for: indexPath) as? T else {
            fatalError("Unable to dequeu \(cellType)")
        }
        cell.configure(with: value)
        return cell
    }
}

