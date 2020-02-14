//
//  NoInternetConnectionRoute.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation
import UIKit

protocol NoInternetConnectionRoute {
    func openNoInternetConnectionAlert()
}

extension NoInternetConnectionRoute where Self: RouterProtocol {
    
    func openNoInternetConnectionAlert() {
        let alertViewController = UIAlertController(title: "Title", message: "No internet connection", preferredStyle: .alert)
        viewController?.present(alertViewController, animated: true, completion: nil)
    }
}
