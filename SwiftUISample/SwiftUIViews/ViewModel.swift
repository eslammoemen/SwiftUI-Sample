//
//  ViewModel.swift
//  SwiftUISample
//
//  Created by Eslam Mohamed on 26/01/2024.
//

import Foundation

final class ViewModel: ObservableObject {
    
    @Published var users: [String] = []
    
    init() {
        users = ["eslam", "adin", "ramin","eslam", "adin", "ramin","eslam", "adin"]
    }
}
