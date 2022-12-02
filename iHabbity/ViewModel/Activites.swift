//
//  Activites.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import Foundation


class Activities: ObservableObject, Identifiable {
    
    @Published var activities = [Activity](){
        didSet{
            if let data = try? JSONEncoder().encode(activities){
                UserDefaults.standard.set(data, forKey: "activities")
            }
        }
    }
    
    
    init(){
        if let savedActivities = UserDefaults.standard.data(forKey: "activities"){
            
            if let decoded = try? JSONDecoder().decode([Activity].self, from: savedActivities){
                activities = decoded
                return
            }
            activities = []
        }
    }
    
       
}
