//
//  SettingsRoutes.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation

protocol SettingsRoute {
    var settingsTransition: Transition { get }
    func openSettingsModule()
}

extension SettingsRoute where Self: RouterProtocol {
    func openSettingsModule() {
        let module = SettingsModule()
        let transition = settingsTransition // it's a calculated property so I saved it to the variable in order to have one instance
        module.router.openTransition = transition
        open(module.viewController, transition: transition)
    }
}
