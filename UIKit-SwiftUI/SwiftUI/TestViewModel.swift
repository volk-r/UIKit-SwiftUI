//
//  TestViewModel.swift
//  UIKit-SwiftUI
//
//  Created by Roman Romanov on 20.11.2024.
//

import Foundation

/// Data bridge between UIKit and SwiftUI

class TestViewModel: ObservableObject {
    @Published var message: String = ""
    
    var messageForUIKit: String = "" {
        didSet {
            print("We got the string '\(messageForUIKit)' and can send it anywhere further")
        }
    }
}
