//
//  Animator.swift
//  ios-animations
//
//  Created by Roman Guseynov on 15.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//
import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
