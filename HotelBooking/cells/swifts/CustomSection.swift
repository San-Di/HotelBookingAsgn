//
//  CustomSection.swift
//  HotelBooking
//
//  Created by Sandi on 9/6/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class CustomSection: UICollectionReusableView {

    @IBOutlet weak var labelCustomSection: UILabel!
    var mData : String = ""{
        didSet{
            labelCustomSection.text = mData
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
