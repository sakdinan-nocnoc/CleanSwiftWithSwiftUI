//
//  WelcomeSceneView.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

struct WelcomeSceneView: View {
    let viewModel: WelcomeSceneViewModelInterface
    
    var body: some View {
        VStack {
            Text(viewModel.text)
            Divider()
            Button(viewModel.buttonText) {
                viewModel.input?.didSelectButton(viewModel)
            }
        }
    }
}

struct WelcomeSceneView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DefaultWelcomeSceneViewModel(
            text: "Hello World",
            buttonText: "Tap test"
        )
        WelcomeSceneView(viewModel: viewModel)
    }
}
