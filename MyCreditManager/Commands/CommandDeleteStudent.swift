//
//  CommandDeleteStudent.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class CommandDeleteStudent: CommandType {
    func run(_ reportCard: ReportCardType) {
        print("삭제할 학생의 이름을 입력해주세요")
        if let student = readLine(),
           !student.isEmpty {
            print(reportCard.delete(student))
        }
        else {
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        }
    }
}
