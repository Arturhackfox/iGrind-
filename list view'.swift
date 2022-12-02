//
//  list view'.swift
//  iHabbity
//
//  Created by Arthur Sh on 02.12.2022.
//

import SwiftUI

struct list_view_: View {
    var body: some View {
        
        List{
            Text("1")
            Text("1")
            Text("1")
            Text("1")
                .listRowBackground(Color.white)
        }
        .colorMultiply(.customGreen)

        
    }
}

struct list_view__Previews: PreviewProvider {
    static var previews: some View {
        list_view_()
    }
}
