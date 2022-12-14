//
//  main.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

func readCommand() -> String?{
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    return readLine()
}

let reportCard:ReportCardType = ReposrtCard()
while let command = readCommand() {

    var commandType:CommandType? = nil
    switch command {
    case "1":
        commandType = CommandInsertStudent()
    case "2":
        commandType = CommandDeleteStudent()
    case "3":
        commandType = CommandInsertCredit()
    case "4":
        commandType = CommandDeleteCredit()
    case "5":
        commandType = CommandDisplayCredit()
    case "X":
        fallthrough
    case "x":
        commandType = CommandX()
    default : print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
    }
    
    commandType?.run(reportCard)
}
