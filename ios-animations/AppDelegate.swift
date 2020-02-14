//
//  AppDelegate.swift
//  ios-animations
//
//  Created by Roman Guseynov on 14.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let mainModule = MainModuleBuilder.module()
    let navigationController = UINavigationController(rootViewController: mainModule)
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    
    return true
  }
  
  
  
}

