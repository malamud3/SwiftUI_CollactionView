//
//  AFButton.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.blue.gradient)
            .foregroundColor(.white)
            .cornerRadius(15)
            .shadow(radius: 20)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "test")
    }
}
