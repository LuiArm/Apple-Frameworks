//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by luis armendariz on 9/14/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // Iniating a new instance of the view model 
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture { // when selected framework is tapped, the selectedFramework is changed to the framework being tapped
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                
            }
            .navigationTitle("Apple Frameworks")
            .font(.largeTitle)
            .sheet(isPresented: $viewModel.isShowingDetailView){ // the sheet is waiting for isShowingDetailView in view model to be toggled in order to show
                DetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView) // if it is toggled to true the detail view will be updated to the selectedFramework from above, else will show sampleFramework
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70,height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
