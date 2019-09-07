//
//  HotelVOS.swift
//  HotelBooking
//
//  Created by Sandi on 9/5/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import Foundation

class HotelVOS {
    var hotelImg: String
    var hotelTitle: String
    var hotelLocation: String
    var hotelpercentage: String
    var hotelpackages: String
    var hotelRating: String
    var hoteLPrice: String
    
    init(hotelImg: String, hotelTitle: String, hotelLocation: String, hotelpercentage: String, hotelpackages: String, hotelRating: String, hoteLPrice: String) {
        
        self.hotelImg = hotelImg
        self.hotelTitle = hotelTitle
        self.hotelLocation = hotelLocation
        self.hotelpercentage = hotelpercentage
        self.hotelpackages = hotelpackages
        self.hotelRating = hotelRating
        self.hoteLPrice = hoteLPrice
        
    }
}

extension HotelVOS {
    static func getHotelList() -> [HotelVOS] {
        return [
        
            .init(hotelImg: "https://www.tripsavvy.com/thmb/mPp5oY_R7GPR1ULgKnI8gOWQvOo=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/EWOW-1600x900-587953e95f9b584db3825b8a.jpg", hotelTitle: "Maldives Hotel", hotelLocation: "Meldive Beach", hotelpercentage: "Get 50% off", hotelpackages: "Free Wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://i.ytimg.com/vi/obP1IJ_Jcik/maxresdefault.jpg", hotelTitle: "The Westeen", hotelLocation: "Gulshan Circle 2, Dehka", hotelpercentage: "Get 50% off", hotelpackages: "Free Wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://media.radissonhotels.net/image/Radisson-Blu-Plaza-Delhi-Airport/Exteriorview/16256-114048-f63647010_3XL.jpg", hotelTitle: "Radison Blue", hotelLocation: "Airport Road, Dheka", hotelpercentage: "Free Buffet Dinner", hotelpackages: "Free wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://www.berjayahotel.com/sites/default/files/hotel-home/johorbahru/seaview-fcd.jpg", hotelTitle: "New York Hotel & Casino", hotelLocation: "Airport Road, Dheka", hotelpercentage: "Free Buffet Dinner", hotelpackages: "Free wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://www.miamiherald.com/latest-news/p9frdd/picture232030707/alternates/FREE_1140/04_Entrance.jpg", hotelTitle: "Gulshan Circle 2,", hotelLocation: "Airport Road, Dheka", hotelpercentage: "Free Buffet Dinner", hotelpackages: "Free wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://i.ytimg.com/vi/obP1IJ_Jcik/maxresdefault.jpg", hotelTitle: "The Westeen", hotelLocation: "Gulshan Circle 2, Dehka", hotelpercentage: "Get 50% off", hotelpackages: "Free Wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://img1.10bestmedia.com/Images/Photos/257426/rad-blue-use_54_990x660_201406012119.jpg", hotelTitle: "Radison Blue", hotelLocation: "Airport Road, Dheka", hotelpercentage: "Free Buffet Dinner", hotelpackages: "Free wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://pix10.agoda.net/hotelImages/392/392687/392687_16021914080040030260.jpg", hotelTitle: "New York Hotel & Casino", hotelLocation: "Airport Road, Dheka", hotelpercentage: "Free Buffet Dinner", hotelpackages: "Free wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day"),
            .init(hotelImg: "https://www.miamiherald.com/latest-news/p9frdd/picture232030707/alternates/FREE_1140/04_Entrance.jpg", hotelTitle: "Meldive Beach", hotelLocation: "Airport Road, Dheka", hotelpercentage: "Free Buffet Dinner", hotelpackages: "Free wifi. swimming", hotelRating: "4.3 (21 ratings)", hoteLPrice: "$99/day")
        ]
    }
}
