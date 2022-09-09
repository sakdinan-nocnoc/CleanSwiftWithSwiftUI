//
//  WelcomeSceneViewModel.swift
//  CleanSwiftWithSwiftUI
//

import SwiftUI

protocol WelcomeSceneViewInput: AnyObject {
    func didSelectButton(_ sender: WelcomeSceneViewModelInterface?)
}

protocol WelcomeSceneViewModelInterface {
    var input: WelcomeSceneViewInput? { get set }
    var text: String { get }
    var buttonText: String { get }
}

final class DefaultWelcomeSceneViewModel: WelcomeSceneViewModelInterface {
    var input: WelcomeSceneViewInput?
    @Published private(set) var text: String
    @Published private(set) var buttonText: String
    
    init(
        text: String,
        buttonText: String
    ) {
        self.text = text
        self.buttonText = buttonText
    }
}
