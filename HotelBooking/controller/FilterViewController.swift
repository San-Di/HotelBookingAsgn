//
//  FilterViewController.swift
//  HotelBooking
//
//  Created by Sandi on 9/7/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    @IBOutlet weak var btnRatingNone: UIButton!
    
    @IBOutlet weak var btnRating1: UIButton!
    @IBOutlet weak var btnRating2: UIButton!
    @IBOutlet weak var btnRating3: UIButton!
    @IBOutlet weak var btnRating4: UIButton!
    @IBOutlet weak var btnRating5: UIButton!
    
    @IBOutlet weak var btnFilter: UIButton!
    @IBOutlet weak var btnMap: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnRating4.layer.cornerRadius = 5
        
        changeBtnStyle(button: btnRatingNone)
        changeBtnStyle(button: btnRating1)
        changeBtnStyle(button: btnRating2)
        changeBtnStyle(button: btnRating3)
        changeBtnStyle(button: btnRating5)
        
        btnFilter.layer.cornerRadius = 10
        btnMap.layer.cornerRadius = 10
    }
    
    static func renderBottonSheet() -> FilterViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilterViewController") as! FilterViewController
    }

    func changeBtnStyle(button: UIButton!){
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
    }
}
