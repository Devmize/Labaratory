//
//  AuthViewController.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 08.01.2023.
//

import UIKit

final class AuthViewController: UIViewController {
    
    // MARK: - UIElements
    
    private let loginTextField = CustomTextField(placeholder: "")
    private let passwordTextField = CustomTextField(placeholder: "")
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = .init(name: "avenir", size: 20)
        label.textColor = .black
        return label
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .init(name: "avenir", size: 20)
        label.textColor = .black
        return label
    }()
    
    private lazy var signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .init(name: "avenir", size: 20)
        button.backgroundColor = Constants.Colors.backgroundButtonColor
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(clickSignInButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .init(name: "avenir", size: 16)
        button.addTarget(self, action: #selector(clickSignUpButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = Constants.Colors.backgroundAppColor
        setupConstrains()
        createTapGesture()
    }
}

// MARK: - Button methods
extension AuthViewController {
    
    @objc private func clickSignInButton() {

    }
    
    @objc private func clickSignUpButton() {
        
    }
}

// MARK: - Setup constrains
extension AuthViewController {
    
    private func setupConstrains() {
        
        let loginView: TextFieldView = .init(label: self.loginLabel, textField: self.loginTextField)
        let passwordView: TextFieldView = .init(label: self.passwordLabel, textField: self.passwordTextField)
        
        let textFieldStackView = UIStackView(arrangedSubviews: [loginView, passwordView])
        textFieldStackView.axis = .vertical
        textFieldStackView.spacing = 15
        
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        self.signInButton.translatesAutoresizingMaskIntoConstraints = false
        self.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textFieldStackView)
        self.view.addSubview(signInButton)
        self.view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            textFieldStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 225),
            textFieldStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            textFieldStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            self.signInButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 30),
            self.signInButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70),
            self.signInButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -70),
            self.signInButton.heightAnchor.constraint(equalToConstant: 55)
        ])
        
        NSLayoutConstraint.activate([
            self.signUpButton.topAnchor.constraint(equalTo: self.signInButton.bottomAnchor, constant: 7),
            self.signUpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.signUpButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

// MARK: - UITapGestureRecognizer
extension AuthViewController {
    
    private func createTapGesture() {
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        self.view.addGestureRecognizer(tap)
    }
}
