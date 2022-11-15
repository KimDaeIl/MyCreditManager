//
//  CommandType.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

protocol CommandType {
    func run(_ reportCard:ReportCardType)
}
