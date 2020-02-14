//
//  MainViewModel.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation
class MainViewModel {

    private let router: MainRouter.Routes
    
    init(router: MainRouter.Routes) {
        self.router = router
    }
    
    func didTriggerSettingsEvent() {
        router.openSettingsModule()
    }
}
