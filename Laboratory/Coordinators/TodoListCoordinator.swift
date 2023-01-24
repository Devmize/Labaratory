//
//  TodoListCoordinator.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 14.01.2023.
//

import Foundation
import UIKit

final class TodoListCoordinator: Coordinator {
    
    private(set) var childsCoordinators: [Coordinator] = []
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let todoListController = TodoListViewController()
        navigationController.setViewControllers([todoListController], animated: true)
    }
}
