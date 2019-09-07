//
//  SearchViewController.swift
//  HotelBooking
//
//  Created by Sandi on 9/6/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit
import FittedSheets

class SearchViewController: UIViewController {

    @IBOutlet weak var outerCollectionView: UICollectionView!
    @IBOutlet weak var btnFilter: CardView!
    
    
    @IBOutlet weak var viewLocation: CardView!
    @IBOutlet weak var viewCheckIn: CardView!
    @IBOutlet weak var viewCheckOut: CardView!
    @IBOutlet weak var viewCount: CardView!
    @IBOutlet weak var viewRooms: CardView!

    @IBOutlet weak var viewNavigation: CardView!
    
    @IBOutlet weak var txtcheckin: UITextField!
    @IBOutlet weak var txtLocation: UITextField!
    
    @IBOutlet weak var txtCheckOut: UITextField!
    @IBOutlet weak var txtCount: UITextField!
    
    @IBOutlet weak var txtRooms: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    
    @IBOutlet weak var btnMap: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        viewNavigation.cornerRadius = viewNavigation.bounds.height/2
        txtLocation.borderStyle = .none
        txtcheckin.borderStyle = .none
        txtCheckOut.borderStyle = .none
        txtCount.borderStyle = .none
        txtRooms.borderStyle = .none
        
        changeBtnStyle(view: viewLocation)
        changeBtnStyle(view: viewCheckIn)
        changeBtnStyle(view: viewCheckOut)
        changeBtnStyle(view: viewCount)
        changeBtnStyle(view: viewRooms)
        
        btnSearch.layer.cornerRadius = 10
        btnMap.layer.cornerRadius = 10
        
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector (handleFilter (_:)))
        btnFilter.addGestureRecognizer(gesture)
        
        outerCollectionView.delegate = self
        outerCollectionView.dataSource = self
        
        outerCollectionView.register(UINib(nibName: String(describing: OuterCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: OuterCollectionViewCell.self))
        
        outerCollectionView.register(UINib(nibName: String(describing: CustomSection.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: CustomSection.self))
        
        
        let layout = outerCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: (self.view.frame.width), height: 280)
        
        layout.minimumLineSpacing = 4
    }
    @objc func handleFilter(_ sender:UITapGestureRecognizer){
            let controller = FilterViewController.renderBottonSheet()
        //
            let sheetController = SheetViewController(controller: controller, sizes: [.fixed(self.view.frame.height * 2 / 3 ), .fullScreen])
        //
        //    // Adjust how the bottom safe area is handled on iPhone X screens
            sheetController.blurBottomSafeArea = true
            sheetController.adjustForBottomSafeArea = true
        //
        //    // Turn off rounded corners
        //    sheetController.topCornersRadius = 0
        //
        //    // Make corners more round
            sheetController.topCornersRadius = 15
        //
        //    // Disable the dismiss on background tap functionality
            sheetController.dismissOnBackgroundTap = true
        //
        //    // Change the overlay color
        //  sheetController.overlayColor = UIColor.white
        //
        //    // Change the handle color
            sheetController.handleColor = UIColor.darkText
            self.present(sheetController, animated: false, completion: nil)
    }
    
    func changeBtnStyle(view: CardView!){
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
    }
}

extension SearchViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: CustomSection.self), for: indexPath) as! CustomSection
        
        sectionHeader.mData = indexPath.section == 0 ? "TOP SEARCHS" : "RECENT SEARCHS"
        
        return sectionHeader
    }
}

extension SearchViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: OuterCollectionViewCell.self), for: indexPath) as! OuterCollectionViewCell
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
}
