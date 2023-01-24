//
//  CustomTextField.swift
//  Laboratory
//
//  Created by Евгений Мизюк on 17.01.2023.
//

import UIKit

// MARK: - CustomTextField
final class CustomTextField: UITextField {
    
    // MARK: - Private property
    private let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        setupTextField(placeholder: placeholder)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Override methods
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    // MARK: - Private methods
    private func setupTextField(placeholder: String) {
        
        self.placeholder = placeholder
        self.font = .init(name: "avenir", size: 20)
        self.backgroundColor = .white
        self.textColor = .black
        self.layer.cornerRadius = 5
    }
}
