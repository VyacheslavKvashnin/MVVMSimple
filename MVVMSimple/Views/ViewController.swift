//
//  ViewController.swift
//  MVVMSimple
//
//  Created by Вячеслав Квашнин on 13.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var statusTextLabel: UILabel!
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    private func initialState() {
        statusTextLabel.text = ""
    }
    
    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.statusTextLabel.text = statusText
            }
        }
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel.userButtonPressed(login: loginTF.text ?? "",
                                    password: passwordTF.text ?? "")
    }
}

