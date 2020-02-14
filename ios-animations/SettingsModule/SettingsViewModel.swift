//
//  SettingsViewModel.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation

final class SettingsViewModel {

    weak var output: SettingsModuleOutput?

    private let router: SettingsRouter.Routes

  // MARK: - Lifecycle
    init(router: SettingsRouter.Routes) {
        self.router = router
    }

    func didTriggerViewReadyEvent() {
        
    }
    
    func closeEvent() {
        router.close()
    }
}

// MARK: - SettingsModuleInput
extension SettingsViewModel: SettingsModuleInput {
}
