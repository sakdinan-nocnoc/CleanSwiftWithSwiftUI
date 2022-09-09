//
//  WelcomeSceneViewController.swift
//  CleanSwiftWithSwiftUI
//

import UIKit
import SwiftUI

protocol WelcomeSceneViewControllerInput: AnyObject {
    func displayDetails()
}

typealias WelcomeSceneViewControllerOutput = WelcomeSceneInteractorInput

final class WelcomeSceneViewController: UIHostingController<WelcomeSceneView> {
    var interactor: WelcomeSceneViewControllerOutput?
    var router: WelcomeSceneRoutingLogic?
    var viewModel: WelcomeSceneViewModelInterface?
}

extension WelcomeSceneViewController: WelcomeSceneViewControllerInput {
    func displayDetails() {
        let viewModel = DefaultDetailsSceneViewModel(text: "Details")
        router?.showDetails(viewModel: viewModel)
    }
}

extension WelcomeSceneViewController: WelcomeSceneViewInput {
    func didSelectButton(_ sender: WelcomeSceneViewModelInterface?) {
        interactor?.details()
    }
}
