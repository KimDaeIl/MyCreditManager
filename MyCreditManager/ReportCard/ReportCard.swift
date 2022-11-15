//
//  ReportCard.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

class ReposrtCard:ReportCardType {
    private var credit = [StudentCreditReport]()
    
    func insert(_ student: String) -> String {
        if credit.first(where: { $0.name == student }) == nil {
            let studentCredit = StudentCreditReport(name: student, credits: [])
            credit.append(studentCredit)
            
            return "\(student) 학생을 추가했습니다."
        }
        else {
            return "\(student)은 이미 존재하는 학생입니다. 추가하지 않습니다."
        }
    }
    
    func delete(_ student: String) -> String {
        if let index = credit.firstIndex(where: { $0.name == student }) {
            return "\(credit.remove(at: index).name) 학생을 삭제했습니다."
        }
        else {
            return "\(student) 학생을 찾지 못했습니다."
        }
    }
    
    func insert(student: String, subjectCredit: Credit) -> String{
        if let creditIndex = credit.firstIndex(where: { $0.name == student}) {
            credit[creditIndex].upsert(subjectCredit)
        }
        else {
            let creditReport = StudentCreditReport(name: student, credits: [subjectCredit])
            credit.append(creditReport)
        }
        
        return "\(student) 학생의 \(subjectCredit.name) 과목이 \(subjectCredit.credit)로 추가(변경)되었습니다."
    }
    
    func delete(student: String, subjectName: String) -> String {
        if let creditIndex = credit.firstIndex(where: { $0.name == student}) {
            if credit[creditIndex].delete(subjectName) {
                return "\(student) 학생의 \(subjectName) 과목 성적이 삭제되었습니다."
            }
            else {
                return "\(student) 학생의 \(subjectName) 과목 성적을 찾지 못했습니다."
            }
        }
        else {
            return "\(student) 학생을 찾지 못했습니다."
        }
    }
}
