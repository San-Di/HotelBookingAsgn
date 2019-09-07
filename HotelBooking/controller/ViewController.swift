//
//  ViewController.swift
//  HotelBooking
//
//  Created by Sandi on 9/5/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mHotelList: [HotelVOS] = HotelVOS.getHotelList()
    
    var menuTitleList = ["Nearby", "Popular", "All"]
    
    let numberOfItemPerRow: CGFloat = 3
    let spacingPerItem: CGFloat = 20
    
    @IBOutlet weak var menuListCollectionView: UICollectionView!
    @IBOutlet weak var hotelListTableView: UITableView!
    
    @IBOutlet weak var imgProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgProfile.layer.cornerRadius = imgProfile.bounds.height / 2
        hotelListTableView.delegate = self
        hotelListTableView.dataSource = self
        
        hotelListTableView.register(UINib(nibName: String(describing: HotelItemTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HotelItemTableViewCell.self))
        
        
        menuListCollectionView.delegate = self
        menuListCollectionView.dataSource = self
        
        
        menuListCollectionView.register(UINib(nibName: String(describing: MenuCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MenuCollectionViewCell.self))
        
      
        let totalPadding: CGFloat = spacingPerItem * (numberOfItemPerRow + 1)
        
        let itemWidth: CGFloat = ( self.view.bounds.width  - totalPadding ) / numberOfItemPerRow
        let itemHeight: CGFloat = 60
        print("width \(itemWidth) height \(itemHeight)")
        let layout = menuListCollectionView.collectionViewLayout as! UICollectionViewFlowLayout

        layout.minimumLineSpacing = 8
        
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
        
        menuListCollectionView.isScrollEnabled = false

    }


}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mHotelList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HotelItemTableViewCell.self), for: indexPath) as! HotelItemTableViewCell
        cell.mHotel = mHotelList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MenuCollectionViewCell.self), for: indexPath) as! MenuCollectionViewCell
        
        cell.mData = menuTitleList[indexPath.row]
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegate{

    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        let cell = collectionView.cellForItem(at: indexPath) as! MenuCollectionViewCell
        cell.labelMenuTitle.textColor = UIColor.black
        cell.viewActiveIndicator.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
        collectionView.deselectItem(at: indexPath, animated: true)
        return true
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! MenuCollectionViewCell
        cell.labelMenuTitle.textColor = UIColor.lightGray
        cell.viewActiveIndicator.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
}

