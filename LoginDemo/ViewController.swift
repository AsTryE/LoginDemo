//
//  ViewController.swift
//  LoginDemo
//
//  Created by apple on 2021/9/16.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var textField_username: LoginTextField!
    @IBOutlet weak var textField_password: LoginTextField!
    
    // MARK: - IBActions
    @IBAction func loginAction(_ sender: Any) {
        let username = textField_username.text
        let password = textField_password.text
        let alertVc = UIAlertController.init(title: "输入用户内容", message: "用户名：\(username ?? "")\n密码：\(password ?? "")", preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "确定", style: .default) { _ in
            
        }
        alertVc.addAction(okAction)
        self.present(alertVc, animated: true, completion: nil)
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Touch Event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

