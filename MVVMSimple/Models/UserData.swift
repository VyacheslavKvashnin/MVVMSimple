//
//  UserData.swift
//  MVVMSimple
//
//  Created by Вячеслав Квашнин on 13.08.2022.
//

import Foundation

struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Slava",
                                   city: "Moscow",
                                   email: "some@mail.com",
                                   phone: "+79058367708")
}
