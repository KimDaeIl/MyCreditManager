//
//  CommandInsertScore.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class CommandInsertCredit: CommandType {
    func run(_ reportCard: ReportCardType) {
        print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift A+")
        if let inputs = readLine()?.components(separatedBy: " "),
           3 <= inputs.count  {
            let credit = Credit(name: inputs[1], credit: inputs[2])
            
            print(reportCard.insert(student: inputs[0], subjectCredit: credit))
        }
        else {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        }
    }
}
