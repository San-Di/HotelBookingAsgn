//
//  MenuCollectionViewCell.swift
//  HotelBooking
//
//  Created by Sandi on 9/5/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewActiveIndicator: UIView!
    
    @IBOutlet weak var labelMenuTitle: UILabel!
    
    var mData: String!{
        didSet{
            labelMenuTitle.text = mData
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewActiveIndicator.layer.cornerRadius = viewActiveIndicator.bounds.height / 2
    }

}
