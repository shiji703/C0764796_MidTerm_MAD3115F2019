//
//  Internet.swift
//  sample
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet : Bill
{
   
    
    var providerName : String
    var gbUsed : Float
    var billAmount : Float
    
    init(providerName : String, gbUsed : Float, billId : String, billDate : String,billAmount: Float, billType : Bill.Types) {
    self.providerName = providerName
    self.gbUsed = gbUsed
    self.billAmount = billAmount
    super.init(billId: billId, billDate: billDate, billType: billType)
        
    }
    
    
//    override func totalBill()-> Float {
//        print("call")
//        totalBillAmount = totalBillAmount + billAmount
//        return totalBillAmount
//    }

}