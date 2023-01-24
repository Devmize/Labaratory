//
//  AppCoordinator.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 14.01.2023.
//

import Foundation
import UIKit

protocol Coordinator {
    var childsCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    
    private(set) var childsCoordinators: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let rootViewController = UITabBarController()
        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
        
        let tabBarCoordinator = TabBarCoordinator(tabBarController: rootViewController)
        tabBarCoordinator.start()
        childsCoordinators.append(tabBarCoordinator)
    }
}
