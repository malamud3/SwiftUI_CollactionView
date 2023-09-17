//
//  FreameworkDetailView.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI

struct FreameworkDetailView: View {
    
    var framework: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
        }
        .padding()
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: MockData.sampleFramework.urlString)!))
        })
            
        
    }
}

struct FreameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FreameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
 


