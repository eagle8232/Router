//
//  SwiftUIView.swift
//  
//
//  Created by Vusal Nuriyev 2 on 11.07.24.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CustomNavigationStack<C: View>: UIViewControllerRepresentable {
    
    @ObservedObject var router: Router = Router()
    @ViewBuilder var rootView: () -> C
    var title: String?
    
    public init(title: String? = nil, @ViewBuilder root: @escaping () -> C) {
        self.title = title
        self.rootView = root
    }
    
    public func makeUIViewController(context: Context) -> UINavigationController {
        return self.router.setupNavigationController(with: rootView(), title: title)
    }
    
    public func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        // Do not update
    }
    
}
