//
//  Activity.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import Foundation


struct Activity: Identifiable, Equatable, Codable {
    var id = UUID()
    var name: String = ""
    var description: String = ""
    var completionCount: Int = 0
    
    
    mutating func logHabbit(){
        completionCount += 1
    }
    
    
    
}
