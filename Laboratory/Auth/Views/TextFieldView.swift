//
//  ButtonContainerView.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 08.01.2023.
//

import UIKit

// MARK: - TextFieldView
final class TextFieldView: UIView {

    init(label: UILabel, textField: UITextField) {
        super.init(frame: .zero)
        
        self.setupView(label: label, textField: textField)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    private func setupView(label: UILabel, textField: UITextField) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(label)
        self.addSubview(textField)
        
        setupLayout(label: label, textField: textField)
    }
    
    private func setupLayout(label: UILabel, textField: UITextField) {
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 3),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            textField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        self.bottomAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
    }
    
}
