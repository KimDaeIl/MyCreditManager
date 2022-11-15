//
//  StudentCreditReport.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

struct StudentCreditReport  {
    let name:String
    var credits:[Credit]
    
    mutating func upsert(_ credit:Credit) {
        if let index = credits.firstIndex(where: {$0.name == credit.name}) {
            credits.remove(at: index)
            credits.append(credit)
        }
        else {
            credits.append(credit)
        }
    }
}
