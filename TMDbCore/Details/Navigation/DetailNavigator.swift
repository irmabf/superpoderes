//
//  DetailNavigator.swift
//  TMDbCore
//
//  Created by Irma Blanco on 14/04/2018.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation
//Creo el protocolo de DetailNavigator, lo implemento en PushDetailNavigator.swift
protocol DetailNavigator {
    func navigateToShow(withIdentifier identifier: Int64)
    func navigateToMovie(withIdentifier identifier: Int64)
}
