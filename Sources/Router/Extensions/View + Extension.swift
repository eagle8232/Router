//
//  SwiftUIView.swift
//  
//
//  Created by Vusal Nuriyev 2 on 01.08.24.
//

import SwiftUI

extension View {
    
    static func title(_ title: String, router: Router) {
        router.navigationController.title = title
    }
}
