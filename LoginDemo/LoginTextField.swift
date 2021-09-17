//
//  LoginTextField.swift
//  LoginDemo
//
//  Created by apple on 2021/9/17.
//

import Foundation
import UIKit

class LoginTextField: UITextField {
    
    @IBInspectable var login_foregroundColor:UIColor! = UIColor.blue
    
    override func drawPlaceholder(in rect: CGRect) {
        // 计算占位文字的 Size
        if let placeholderSize = placeholder?.size(
            withAttributes: [
                NSAttributedString.Key.font: font as Any
            ]) {
            placeholder?.draw(
                in: CGRect(x: 0, y: (rect.size.height - placeholderSize.height) / 2, width: rect.size.width, height: rect.size.height),
                withAttributes: [
                    NSAttributedString.Key.foregroundColor: login_foregroundColor as Any,
                    NSAttributedString.Key.font: font as Any
                ])
        }
    }
}
