//
//  HotelItemTableViewCell.swift
//  HotelBooking
//
//  Created by Sandi on 9/5/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit
import SDWebImage

class HotelItemTableViewCell: UITableViewCell {

    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var imgHotel: UIImageView!
    @IBOutlet weak var labelHotelTitle: UILabel!
    @IBOutlet weak var labelHotelLocation: UILabel!
    @IBOutlet weak var labelHotelPromotion: UILabel!
    
    @IBOutlet weak var labelHotelPackage: UILabel!
    @IBOutlet weak var labelHotelPricing: UILabel!
    @IBOutlet weak var btnBookmark: UIButton!
    
    @IBOutlet weak var viewHotelPricing: UIView!
    
    var mHotel: HotelVOS! {
        didSet{
            imgHotel.sd_setImage(with: URL(string: mHotel.hotelImg), completed: nil)
            labelHotelTitle.text = mHotel.hotelTitle
            labelHotelPackage.text = mHotel.hotelpackages
            labelHotelPromotion.text = mHotel.hotelpercentage
            labelRating.text = mHotel.hotelRating
            labelHotelPricing.text = mHotel.hoteLPrice
            labelHotelLocation.text = mHotel.hotelLocation
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgHotel.layer.cornerRadius = 15
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
