//
//  InnerCollectionViewCell.swift
//  HotelBooking
//
//  Created by Sandi on 9/6/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit
import SDWebImage

class InnerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgHotel: UIImageView!
    
    @IBOutlet weak var labelPrice: UILabel!
    
    @IBOutlet weak var labelRating: UILabel!
    
    @IBOutlet weak var labelHotelName: UILabel!
    
    @IBOutlet weak var labelHotelLocation: UILabel!
    
    var mHotel: HotelVOS! {
        didSet{
            imgHotel.sd_setImage(with: URL(string: mHotel.hotelImg), completed: nil)
            labelHotelName.text = mHotel.hotelTitle
            labelHotelLocation.text = mHotel.hotelLocation
            labelRating.text = mHotel.hotelRating
            labelPrice.text = mHotel.hoteLPrice
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgHotel.layer.cornerRadius = 15
        
        
        
    }

}
