//
//  TestView.swift
//  UIKit-SwiftUI
//
//  Created by Roman Romanov on 20.11.2024.
//

import SwiftUI

struct TestView: View {
    
    @ObservedObject var viewModel: TestViewModel
    
    var body: some View {
        VStack {
            Text("Hello SwiftUI from UIKit!")
                .foregroundStyle(.white)
                .font(.title)
            Text(viewModel.message)
                .foregroundStyle(.primary)
                .font(.largeTitle)
            TextField("", text: $viewModel.message)
                .foregroundStyle(.white)
                .background(.orange)
                .padding()
                .onChange(of: viewModel.message) { newValue in
                    viewModel.messageForUIKit = viewModel.message
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
    }
}

#Preview {
    TestView(viewModel: TestViewModel())
}
