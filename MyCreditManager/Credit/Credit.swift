//
//  Credit.swift
//  MyCreditManager
//
//  Created by 김대일 on 2022/11/15.
//

import Foundation

struct Credit {
    let name:String
    let credit:String
    
    func grade() -> Double {
        
        var grade:Double = 0.0
        
        switch credit {
        case "A+": grade = 4.5
        case "A": grade = 4.0
        case "B+": grade = 3.5
        case "B": grade = 3.0
        case "C+": grade = 2.5
        case "C": grade = 2.0
        case "D+": grade = 1.5
        case "D": grade = 1.0
        default: do{}
        }
        
        return grade
    }
    
    func nameWithGrade() -> String {
        return "\(name): \(grade())"
    }
}
