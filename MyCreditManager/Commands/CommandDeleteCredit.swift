//
//  CommandDeleteCredit.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class CommandDeleteCredit: CommandType {
    func run(_ reportCard: ReportCardType) {
        
        print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift")
        if let inputs = readLine()?.components(separatedBy: " "),
           inputs.count <= 2 {
            print(reportCard.delete(student: inputs[0], subjectName: inputs[1]))
        }
        else {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        }
    }
}
