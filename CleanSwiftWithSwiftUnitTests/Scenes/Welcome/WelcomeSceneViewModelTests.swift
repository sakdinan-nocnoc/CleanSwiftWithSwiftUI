//
//  WelcomeSceneViewModelTests.swift
//  CleanSwiftWithSwiftUI
//

@testable import CleanSwiftWithSwiftUI
import XCTest

// swiftlint:disable force_cast
final class WelcomeSceneViewModelTests: XCTestCase {
    
    private var sut: WelcomeSceneViewModelInterface!
    private var viewController: UIViewControllerMock!
    
    override func setUp() {
        super.setUp()
        
        UIView.setAnimationsEnabled(false)
        
        viewController = UIViewControllerMock()
        sut = DefaultWelcomeSceneViewModel(text: "", buttonText: "")
        sut.input = viewController
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        
        super.tearDown()
    }
}

// swiftlint:disable colon
private final class UIViewControllerMock:
    UIViewController, WelcomeSceneViewInput {
    
    var didSelectButtonCalled = false
    func didSelectButton(_ sender: WelcomeSceneViewModelInterface?) {
        didSelectButtonCalled = true
    }
}
