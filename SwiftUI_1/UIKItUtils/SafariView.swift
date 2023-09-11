//
//  SafariView.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable {
    
    let  url: URL
   
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
            SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context:  UIViewControllerRepresentableContext<SafariView>) {
    }
}
