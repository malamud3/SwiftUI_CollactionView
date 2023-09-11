//
//  ExitView.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI

struct ExitButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width:44 , height: 44)
                
            }
        }
    }
}

struct ExitView_Previews: PreviewProvider {
    static var previews: some View {
        ExitButton(isShowingDetailView: .constant(false))
    }
}
