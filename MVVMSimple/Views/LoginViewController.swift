//
//  ViewController.swift
//  MVVMSimple
//
//  Created by Вячеслав Квашнин on 13.08.2022.
//

import UIKit

class LoginViewController: UIViewController, Storyboardable {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var statusTextLabel: UILabel!
    
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    private func initialState() {
        statusTextLabel.text = ""
    }
    
    func bindViewModel() {
        viewModel?.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusTextLabel.text = statusText
            }
        }
        
        viewModel?.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.statusTextLabel.textColor = statusColor
            }
        }
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel?.userButtonPressed(login: loginTF.text ?? "",
                                    password: passwordTF.text ?? "")
        if viewModel!.isLoggedIn {
            coordinator?.isLoggedIn = viewModel!.isLoggedIn
            coordinator?.showMain(login: loginTF.text ?? "")
        }
    }
}

