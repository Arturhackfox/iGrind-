//
//  but.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import SwiftUI

struct but: View {
    var body: some View {
        Button {
           //
            
        } label: {
            VStack{
                Text("Add")
                    .font(.title3)
                    .fontWeight(.regular)
   
            }
            .padding()
            .frame(width: 200, height: 100)
            .foregroundColor(.white)
            .background(.yellow)
            .cornerRadius(12)
        }
    }
}

struct but_Previews: PreviewProvider {
    static var previews: some View {
        but()
    }
}
