//
//  ContentView.swift
//  SwiftUI_1
//
//  Created by Amir Malamud on 11/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    @State private var term = ""
    
    var filterData: [Framework] {
        guard !term.isEmpty else {return MockData.frameworks}
        return MockData.frameworks.filter{$0.name.contains(term)}
    }
    
//    var body: some View {
//
//        NavigationView{
//            ScrollView{
//                LazyVGrid(columns: viewModel.col){
//                    ForEach(MockData.frameworks){ framework in
//                        FrameworkTitleView(framework: framework)
//                            .onTapGesture{
//                                viewModel.selectedFramework = framework
//                            }
//                    }
//                }
//            }
//            .navigationTitle("Welcome")
//            .sheet(isPresented: $viewModel.isShowingDetailView){
//                FreameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
//                                     isShowingDetailView: $viewModel.isShowingDetailView)
//            }
//        }
//
//    }
        var body: some View {
    
            NavigationStack{
                ScrollView{
                    LazyVGrid(columns: viewModel.col){
                        ForEach(filterData){ framework in
                            NavigationLink(value: framework) {
                                FrameworkTitleView(framework: framework)
                            }
                        }
                    }
                }
                .navigationTitle("Welcome")
                .navigationDestination(for: Framework.self) { framework in
                   FreameworkDetailView(framework: framework)
                }
                .searchable(text: $term)
            }
        }
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


