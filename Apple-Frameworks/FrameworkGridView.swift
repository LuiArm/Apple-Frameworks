//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by luis armendariz on 9/14/23.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
                
            }
            .navigationTitle("Apple Frameworks")
            .font(.largeTitle)
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
