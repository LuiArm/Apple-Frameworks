//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by luis armendariz on 9/17/23.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button {
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Button{
               
            }label: {
               AFButton(title: "Learn More")
            }
            .padding(.top, 70)
        }
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework)
    }
}
