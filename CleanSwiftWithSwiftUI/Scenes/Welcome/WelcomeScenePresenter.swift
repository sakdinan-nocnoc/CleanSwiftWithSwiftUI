//
//  WelcomeScenePresenter.swift
//  CleanSwiftWithSwiftUI
//

import UIKit

protocol WelcomeScenePresenterInput {
    func showDetails()
}

typealias WelcomeScenePresenterOutput = WelcomeSceneViewControllerInput

final class WelcomeScenePresenter {
    weak var viewController: WelcomeScenePresenterOutput?
}

extension WelcomeScenePresenter: WelcomeScenePresenterInput {
    func showDetails() {
        viewController?.displayDetails()
    }
}
