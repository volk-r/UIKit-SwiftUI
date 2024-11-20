//
//  ViewController.swift
//  UIKit-SwiftUI
//
//  Created by Roman Romanov on 20.11.2024.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    var viewModel = TestViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.message = "We did it!"
        
        // import TestView from SwiftUI
        let controller = UIHostingController(rootView: TestView(viewModel: viewModel))
        // add to ViewController's view hierarchy
        self.addChild(controller)
        self.view.addSubview(controller.view)
        controller.didMove(toParent: self)
        // set frame as parent frame
        controller.view.frame = view.frame
    }
    
}

