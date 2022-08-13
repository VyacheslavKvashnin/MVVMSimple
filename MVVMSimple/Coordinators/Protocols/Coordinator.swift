//
//  Coordinator.swift
//  MVVMSimple
//
//  Created by Вячеслав Квашнин on 13.08.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
