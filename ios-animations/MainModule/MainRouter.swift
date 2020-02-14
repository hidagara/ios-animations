//
//  MainRouter.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation
import UIKit

final class MainRouter: Router<MainViewController>, MainRouter.Routes {

    typealias Routes = SettingsRoute & NoInternetConnectionRoute & AppSettingsRoute

    var settingsTransition: Transition {
        switch selectedIndex {
        case 0: return PushTransition()
        case 1: return ModalTransition()
        case 2: return ModalTransition(animator: FadeAnimator())
        case 3: return PushTransition(animator: FadeAnimator())
        default: return PushTransition()
        }
    }
        
    private var selectedIndex: Int {
        return UserDefaults.standard.value(forKey: "index") as? Int ?? 0
    }
}
