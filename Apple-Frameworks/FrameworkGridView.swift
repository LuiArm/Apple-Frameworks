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
        LazyVGrid(columns: columns) {
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
            FrameworkTitleView(image: "carplay", title: "Apple Carplay")
        }
        .padding()
       
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


struct FrameworkTitleView: View {
    var image: String
    var title: String
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .frame(width: 70,height: 70)
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
