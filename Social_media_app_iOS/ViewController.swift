//
//  ViewController.swift
//  Social_media_app_iOS
//
//  Created by Nicks on 15.07.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  scrollBottomConstraint.constant = 500
       // titleView.text = "Узри погоду"
    }

//    @IBAction func loginPressed(_ sender: UIButton, forEvent event: UIEvent) {
//    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "loginSegue":
            
            let isAuth = login()
            
            if !isAuth {
                showErrorAlert()
            }
            
            return isAuth
        default:
        return true
        }
    }
            
        func login() -> Bool {
            let login = loginField.text!
            let password = passwordField.text!
            
            
            return login == "admin" && password == "123456"
              
        }
                
                func showErrorAlert() {
                // Создаем контроллер
                let alert = UIAlertController(
                    title: "Ошибка",
                    message: "Введены неверные данные пользователя",
                    preferredStyle: .alert)
                // Создаем кнопку для UIAlertController
                let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                // Добавляем кнопку на UIAlertController
                alert.addAction(action)
                // Показываем UIAlertController
                present(alert, animated: true, completion: nil)
                print("Неуспешная авторизация")
               


            }

    }


// UIWindow - окно
// UIViewController - контроллер - показывает вью - экран
// UIView - графический элемент 
