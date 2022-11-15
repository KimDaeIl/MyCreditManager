//
//  ReportCardType.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

protocol ReportCardType {
    func insert(_ student:String) -> String
    func delete(_ student:String) -> String
    func insert(student:String, subjectCredit: Credit) -> String
    func delete(student:String, subjectName: String) -> String
    func displayCredit(_ student:String) -> String
}

