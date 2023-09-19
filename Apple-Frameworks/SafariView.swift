//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by luis armendariz on 9/18/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiView: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    
    
}
