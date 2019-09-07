//
//  OuterCollectionViewCell.swift
//  HotelBooking
//
//  Created by Sandi on 9/6/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class OuterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var innerCollectionView: UICollectionView!
    
    var mHotelList: [HotelVOS] = HotelVOS.getHotelList()
    
    let width: CGFloat = 0
    let height: CGFloat = 280
    let spacing: CGFloat = 48
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        innerCollectionView.delegate = self
        innerCollectionView.dataSource = self
        
        innerCollectionView.register(UINib(nibName: String(describing: InnerCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: InnerCollectionViewCell.self))
        
        let innerCollectionViewLayout = innerCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        innerCollectionViewLayout.itemSize = CGSize(width: (innerCollectionView.frame.width - spacing) / 1.5 , height: height)
        
    }

}


extension OuterCollectionViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mHotelList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: InnerCollectionViewCell.self), for: indexPath) as! InnerCollectionViewCell
        item.mHotel = mHotelList[indexPath.row]
        return item
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
}

extension OuterCollectionViewCell: UICollectionViewDelegate{
    
}
