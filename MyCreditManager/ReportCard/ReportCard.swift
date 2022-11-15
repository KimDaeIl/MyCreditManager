//
//  ReportCard.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class ReposrtCard:ReportCardType {
    private var students = [String]()
    
    func insert(_ student: String) -> String {
        if !students.contains(student) {
            students.append(student)
            return "\(student) 학생을 추가했습니다."
        }
        else {
            return "\(student)이미 존재하는 학생입니다. 추가하지 않습니다."
        }
    }
    
    func delete(_ student: String) -> String {
        if let index = students.firstIndex(of: student) {
            return "\(students.remove(at: index)) 학생을 삭제했습니다."
        }
        else {
            return "\(student) 학생을 찾지 못했습니다."
        }
    }
}
