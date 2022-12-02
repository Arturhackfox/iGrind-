//
//  dismissButtonView.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import SwiftUI

struct dismissButtonView: View {
    
        @Environment(\.dismiss) private var dismiss
    
    var activities: Activities
  
    
    var newActivityName: String
    var newActivityDescription: String
    
    
    var body: some View {
      
            Button {
                activities.activities.append(Activity(name: newActivityName,description: newActivityDescription, completionCount: 0))
                dismiss()
                
            } label: {
                VStack{
                    Text("Add")
       
                }
                .padding()
                .frame(width: 100, height: 70)
                .foregroundColor(.white)
                .background(.yellow)
                .cornerRadius(12)
            }
            
        
    }
}


