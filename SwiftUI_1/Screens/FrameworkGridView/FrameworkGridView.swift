//
//  ContentView.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
         
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.col){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture{
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Welcome")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FreameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                     isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


