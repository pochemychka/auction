//
//  Auction.swift
//  AuctionApp
//
//  Created by Alexey Olshevsky on 11/6/19.
//  Copyright © 2019 Alexey Olshevsky. All rights reserved.
//

import Foundation
import UIKit


class Auction {
    
    var image: UIImage
    var title: String
    var startPrice: Float
    var endPrice: Float!
    var createDate: Date!
    var endDate: Date!
    var description: String
    
    // Temp place
    var isStar: Bool
    // Addition One-to-many fields: creator, purchasedBy,
    var raisers: [Raiser]!
    
    init(image: UIImage, title: String, price: Float, description: String = "", createDate: Date! = nil,
         endDate: Date! = nil, endPrice: Float! = nil, isStar: Bool) {
        self.image = image
        self.title = title
        self.startPrice = price
        self.endPrice = endPrice
        self.description = description
        self.createDate = createDate
        self.endDate = endDate
        self.isStar = isStar
    }
}
