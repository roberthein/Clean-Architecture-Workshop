//
//  AppDelegate.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ProgrammersViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let provider = ProgrammersProvider(with: Repository())
        let presenter = ProgrammersList(with: provider)
        provider.presenter = presenter
        viewController.presenter = presenter
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}
