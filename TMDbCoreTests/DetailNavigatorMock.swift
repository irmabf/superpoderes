//
//  DetailNavigatorMock.swift
//  TMDbCoreTests
//
//  Created by Irma Blanco on 14/04/2018.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation
@testable import TMDbCore

final class DetailNavigatorMock: DetailNavigator {
 
    
    //grabo las llamadas
    var navigateToShowCalls: [Int64] = []
    var navigateToMovieCalls: [Int64] = []
    
    func navigateToShow(withIdentifier identifier: Int64) {
        navigateToShowCalls.append(identifier)
    }
    
    func navigateToMovie(withIdentifier identifier: Int64 ) {
        navigateToMovieCalls.append(identifier)
    }
    
    
}
