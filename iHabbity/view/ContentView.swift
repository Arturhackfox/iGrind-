//
//  ContentView.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var activities = Activities()
    private var activity = [Activity]()
    
    @State private var isSheetShowing = false
    @State private var newActivityName = ""
    @State private var newActivityDescription = ""
    var body: some View {
        NavigationStack{
            List{
                ForEach(activities.activities) { activity in
                    VStack{
                        NavigationLink{
                            DetailView(viewModel: activities, activity: activity)
                        } label: {
                            Text(activity.name)
                                .font(.title3)
                                .foregroundColor(.primary)
                        }
                        
                        
                        
                    }
                    
                }
                .onDelete(perform: removeRows)
                
            }
            .navigationTitle("iGrind ꠫")
            .toolbar{
                Button{
                    isSheetShowing.toggle()
                } label: {
                        Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $isSheetShowing) {
                VStack(){
                       
                        VStack(alignment: .leading){
                                Text("Activity name")
                                .font(.title3)
                                TextField("Enter...", text: $newActivityName)
                                    .textFieldStyle(.roundedBorder)

                            }
                            .padding(.vertical)
                            
                            VStack(alignment: .leading){
                                Text("Activity description")
                                    .font(.title3)
                                TextField("Enter...", text: $newActivityDescription)
                                    .textFieldStyle(.roundedBorder)
                                    
                            }
                            .padding(.vertical)
                       
                        dismissButtonView(activities: activities, newActivityName: newActivityName, newActivityDescription: newActivityDescription)
                        Spacer()

                }
                    .padding()
                //end of vstack
                
            }
            
        }

    }
    
    func removeRows(at offset: IndexSet){
        activities.activities.remove(atOffsets: offset)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
