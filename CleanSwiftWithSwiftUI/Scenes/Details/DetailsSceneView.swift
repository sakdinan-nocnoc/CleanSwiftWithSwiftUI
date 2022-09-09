//
//  DetailsSceneView.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

struct DetailsSceneView: View {
    let viewModel: DetailsSceneViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.text)
        }
    }
}

struct DetailsSceneView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DefaultDetailsSceneViewModel(text: "Details")
        DetailsSceneView(viewModel: viewModel)
    }
}
