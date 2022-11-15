//
//  CommandDisplayCredit.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class CommandDisplayCredit: CommandType {
    func run(_ reportCard: ReportCardType) {
        print("평점을 알고싶은 학생의 이름을 입력해주세요.")
        if let student = readLine() {
            print(reportCard.displayCredit(student))
        }
    }
}
