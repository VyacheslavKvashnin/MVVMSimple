//
//  ViewModel.swift
//  MVVMSimple
//
//  Created by Вячеслав Квашнин on 13.08.2022.
//

import Foundation
import UIKit.UIColor

class LoginViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    var isLoggedIn = false
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in failed"
            statusColor.value = .black
            isLoggedIn = false
        } else {
            statusText.value = "You successfully logged in!"
            statusColor.value = .green
            isLoggedIn = true
        }
    }
}
