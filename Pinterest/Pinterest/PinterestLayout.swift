//
//  PinterestLayout.swift
//  Pinterest
//
//  Created by PerryChen on 9/23/15.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

import UIKit

protocol PinterestLayoutDelegate {
  // 1
  func collectionView(collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath:NSIndexPath, withWidth:CGFloat) -> CGFloat
  
  // 2
  func collectionView(collectionView: UICollectionView, heightForAnnotationAtIndexPath indexPath: NSIndexPath, withWidth: CGFloat) -> CGFloat
}

class PinterestLayout: UICollectionViewLayout {
   // 1
  var delegate: PinterestLayoutDelegate!
  
  // 2
  var numberOfColumns = 2
  var cellPadding: CGFloat = 6.0
  
  // 3
  // will calculate the attributes for all items and add them to the cache. When the collection view later requests the layout attributes.
  private var cache = [UICollectionViewLayoutAttributes]()
  
  // 4
  private var contentHeight: CGFloat = 0.0
  private var contentWidth: CGFloat {
    let insets = collectionView!.contentInset
    return CGRectGetWidth(collectionView!.bounds) - (insets.left + insets.right)
  }
}
