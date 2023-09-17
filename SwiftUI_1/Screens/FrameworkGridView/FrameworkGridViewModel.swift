//
//  FrameworkGridViewModel.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let col : [GridItem] = [GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())]
    
//    var selectedFramework: Framework? {
//        didSet{
//            isShowingDetailView = true
//        }
//    }
//    
//   @Published var isShowingDetailView = false

}
