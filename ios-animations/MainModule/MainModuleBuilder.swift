//
//  MainModuleBuilder.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation

final class MainModuleBuilder {
    
    static func module() -> MainViewController {
        let router = MainRouter()
        let viewModel = MainViewModel(router: router)
        let viewController = MainViewController(viewModel: viewModel)
        router.viewController = viewController
        return viewController
    }
}
