//
//  SettingsModule.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation
protocol SettingsModuleInput: class {
}

protocol SettingsModuleOutput: class {
}

final class SettingsModule {

    var input: SettingsModuleInput {
        return viewModel
    }

    var output: SettingsModuleOutput? {
        set {
            viewModel.output = newValue
        }
        get {
            return viewModel.output
        }
    }

    let router: SettingsRouter
    let viewController: SettingsViewController

    private let viewModel: SettingsViewModel

    init() {
        let router = SettingsRouter()
        let viewModel = SettingsViewModel(router: router)
        let viewController = SettingsViewController(viewModel: viewModel)
        router.viewController = viewController

        self.router = router
        self.viewController = viewController
        self.viewModel = viewModel
    }
}
