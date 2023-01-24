//
//  TabBarCoordinator.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 14.01.2023.
//

import Foundation
import UIKit

final class TabBarCoordinator: Coordinator {
    
    private(set) var childsCoordinators: [Coordinator] = []
    private let tabBarController: UITabBarController
    
    private let todoListCoordinator: TodoListCoordinator
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        self.tabBarController.tabBar.barTintColor = .black
        self.tabBarController.tabBar.tintColor = .red
        
        self.todoListCoordinator = TodoListCoordinator(navigationController: UINavigationController())
    }
    
    func start() {
        
        var controllers: [UIViewController] = []
        
        self.todoListCoordinator.start()
        self.childsCoordinators.append(self.todoListCoordinator)

        let navigationTodoListController = self.todoListCoordinator.navigationController
        navigationTodoListController.tabBarItem = UITabBarItem(title: "TodoList",
                                                               image: UIImage(systemName: "list.bullet.clipboard", withConfiguration: UIImage.SymbolConfiguration(weight: .medium)),
                                                               tag: 0)
        controllers.append(navigationTodoListController)
        
        self.tabBarController.setViewControllers(controllers, animated: true)
    }
}
