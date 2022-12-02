//
//  DetailView.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import SwiftUI

struct DetailView: View {
    
    @StateObject var viewModel: Activities
    
    @State var activity: Activity
    
    @State var count = 0
    
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
            VStack{
               
                Text("\"\(activity.description)\"")
                    .font(.subheadline.monospaced())
                    .padding(40)
                    .padding(.bottom, 80)
              
                Text("You've done this \(count) times 🙌")
                    .font(.title2.bold())
                    .padding(.bottom, 15)
                
                HStack{
                    Text("Customize:")
                    Stepper("Complete times", value: $count,in: 0...100000 ,step: 1)
                        .frame(width: 100, height: 30)
                        .padding(.leading, 120)
                }
                
                
                Spacer()
                Spacer()
            }
            .padding()
            .onAppear() {
                count = activity.completionCount
            }
            .navigationTitle(activity.name)
            .toolbar{
                Button("save"){
                    replaceOriginal()
                    dismiss()
                }
        }
        

    }
    func replaceOriginal(){
        if let index = viewModel.activities.firstIndex(of: activity){
            // Found index under which user choosed activity from content view
            // created newModel which will go in activities array
            var newModel = Activity(name: activity.name, description: activity.description, completionCount: activity.completionCount)
            newModel.completionCount += count - newModel.completionCount
            //replaced old activity with it's index for updated one
            viewModel.activities[index] = newModel
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: Activities(), activity: Activity(name: "fang", description: "deasdasdasjdasjdasjkdasjkdjkasdjkasjkdasjkhadjkhasjkhdjkahsdjkhsc ", completionCount: 0))
    }
}
