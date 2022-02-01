//
//  GlowingTextField.swift
//  GlowingTextField
//
//  Created by Ömer Faruk KISIK on 31.01.2022.
//

import UIKit

public class GlowingTextField: UIView {
    
    @IBOutlet private var contentView: UIView!
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var textField: UITextField!
    
    public var delegate: UITextFieldDelegate? {
        get {
            return textField.delegate
        }
        set {
            textField.delegate = newValue
        }
    }
    
    public var textFont: UIFont? {
        get {
            return textField.font
        }
        set {
            textField.font = newValue
        }
    }
    
    public var textAlignment: NSTextAlignment {
        get {
            return textField.textAlignment
        }
        set {
            textField.textAlignment = newValue
        }
    }
    
    public var textColor: UIColor? {
        get {
            return textField.textColor
        }
        set {
            textField.textColor = newValue
        }
    }
    
 
    public var placeholderText: String? {
        get {
            return textField.placeholder
        }
        set {
            textField.placeholder = newValue
        }
    }
    
    public var textBackgroundColor: UIColor? {
        get {
            return containerView.backgroundColor
        }
        set {
            if newValue != .clear {
                containerView.backgroundColor = newValue
            } else {
                containerView.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 1.00, alpha: 1.00)
            }
        }
    }
    
    public var glowColor: CGColor? {
        get {
            return containerView.layer.borderColor
        }
        set {
            containerView.layer.borderColor = newValue
            containerView.layer.borderWidth = 0.5
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initSubViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubViews()
    }

    func initSubViews(){
        let nib = UINib(nibName: "GlowingTextField", bundle: Bundle(for: type(of: self)))
        nib.instantiate(withOwner: self, options: nil)
        textField.delegate = self
        containerView.layer.cornerRadius = 4
        containerView.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 1.00, alpha: 1.00)
        containerView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(focusOnTextField(_:))))
        contentView.frame = bounds
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        addSubview(contentView)
    }
    
    @objc func focusOnTextField(_ sender: UITapGestureRecognizer) {
        textField.becomeFirstResponder()
    }
}

extension GlowingTextField: UITextFieldDelegate {
    
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: containerView.bounds,
                                        cornerRadius: 6).cgPath
        shadowLayer.fillColor = containerView.backgroundColor?.cgColor
        shadowLayer.shadowColor = glowColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = .zero
        shadowLayer.shadowOpacity = 1
        shadowLayer.shadowRadius = 6
        containerView.layer.insertSublayer(shadowLayer, at: 0)
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        containerView.layer.sublayers?.removeFirst()
    }
    
}
