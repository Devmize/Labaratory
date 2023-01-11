//
//  AuthViewController.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 08.01.2023.
//

import UIKit

final class AuthViewController: UIViewController {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = .init(name: "avenir", size: 20)
        label.textColor = .black
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter login"
        textField.font = .init(name: "avenir", size: 20)
        textField.backgroundColor = .white
        textField.textColor = .black
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .init(name: "avenir", size: 20)
        label.textColor = .black
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter password"
        textField.font = .init(name: "avenir", size: 20)
        textField.backgroundColor = .white
        textField.textColor = .black
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .init(name: "avenir", size: 20)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 7
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = Constants.Colors.backgroundAppColor
        setupConstrains()
    }
    
    private func setupConstrains() {
        
        let loginView: ButtonContainerView = .init(label: self.loginLabel, textField: self.loginTextField)
        let passwordView: ButtonContainerView = .init(label: self.passwordLabel, textField: self.passwordTextField)
        
        let stackView = UIStackView(arrangedSubviews: [loginView, passwordView])
        stackView.axis = .vertical
        stackView.spacing = 15
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.loginButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        self.view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            self.loginButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            self.loginButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70),
            self.loginButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70),
            self.loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

}
