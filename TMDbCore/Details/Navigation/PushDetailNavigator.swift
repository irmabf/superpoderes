//
//  PushDetailNavigator.swift
//  TMDbCore
//
//  Created by Irma Blanco on 14/04/2018.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import UIKit
//Implemento el protocolo DetailNavigator creado en DetailNavigator.swift, su funcion sera hacer el push

final class PushDetailNavigator {
    //como teng oque hacer un push necesito un navigationController
    private let navigationController: UINavigationController
    
    private unowned let detailViewControllerProvider: DetailViewControllerProvider
    
    init(navigationController: UINavigationController,
         detailViewControllerProvider: DetailViewControllerProvider) {
        self.navigationController = navigationController
        self.detailViewControllerProvider = detailViewControllerProvider
    }

//Ahora implement el protocolo en una extension, pushdetailanvigator implementa detailnavigot
}

extension PushDetailNavigator: DetailNavigator {
    func navigateToMovie(withIdentifier identifier: Int64) {
        let detailViewController = detailViewControllerProvider.showViewController(withIdentifier: identifier)
        navigationController.pushViewController(detailViewController, animated: false)
    }
    
    func navigateToShow(withIdentifier identifier: Int64) {
        let detailViewController = detailViewControllerProvider.movieViewController(withIdentifier: identifier)
        navigationController.pushViewController(detailViewController, animated: false)
    }
}
