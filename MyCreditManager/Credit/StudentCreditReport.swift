//
//  StudentCreditReport.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

struct StudentCreditReport  {
    let name:String
    var credits:[Credit]
    
    mutating func upsert(_ credit:Credit) {
        if let index = credits.firstIndex(where: {$0.name == credit.name}) {
            credits.remove(at: index)
            credits.append(credit)
        }
        else {
            credits.append(credit)
        }
    }
    
    mutating func delete(_ subjectName:String) -> Bool{
        if let index = credits.firstIndex(where: {$0.name == subjectName}) {
            credits.remove(at: index)
            return true
        }
        
        return false
    }
    
    func finalGrade() -> String {
        
        if !credits.isEmpty {
            var grade = credits.map { $0.nameWithGrade() }
            let sum = credits.map{ $0.grade() }.reduce(0, +)
            
            grade.append(String(format: "평점: %.2f", sum / Double(credits.count)))
            
            return grade.joined(separator: "\n")
        }
        else {
            return ""
        }
    }
}
