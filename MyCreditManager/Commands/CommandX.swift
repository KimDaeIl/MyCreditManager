//
//  CommandX.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class CommandX: CommandType {
    func run(_ reportCard:ReportCardType) {
        print("프로그램을 종료합니다...")
        exit(0)
    }
}
