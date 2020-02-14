//
//  Transition.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import Foundation
import UIKit

protocol Transition: class {
  var viewController: UIViewController? { get set }

    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
