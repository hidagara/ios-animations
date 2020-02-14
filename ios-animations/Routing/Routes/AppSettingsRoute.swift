//
//  AppSettingsRoute.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation
import UIKit

protocol AppSettingsRoute {
    func openAppSettings()
}

extension AppSettingsRoute {
    func openAppSettings() {
      UIApplication.shared.open(URL(string:UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
    }
}
