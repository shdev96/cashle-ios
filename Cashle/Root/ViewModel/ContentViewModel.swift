//
//  ContentViewModel.swift
//  Cashle
//
//  Created by 이승희 on 2023/08/28.
//

import Foundation

class ContentViewModel : ObservableObject{
    @Published var userInfo : Bool
    
    init() {
        self.userInfo = false
    }
    
}
