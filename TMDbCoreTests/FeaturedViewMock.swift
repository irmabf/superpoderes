//
//  FeaturedViewMock.swift
//  TMDbCoreTests
//
//  Created by Irma Blanco on 14/04/2018.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation
@testable import TMDbCore

final class FeaturedViewMock: FeaturedView {
    
    var setShowHeaderTitleCalls: [String]  = []
    var setMoviesHeaderTitleCalls: [String] = []
    
    var updateWithShowCalls: [[Show]] = []
    var updateWithMovieCalls: [[Movie]] = []
    
    
    func setShowsHeaderTitle(_ title: String) {
        setShowHeaderTitleCalls.append(title)
    }
    
    func setMoviesHeaderTitle(_ title: String) {
        setMoviesHeaderTitleCalls.append(title)
    }
    
    func update(with shows: [Show]) {
        updateWithShowCalls.append(shows)
    }
    
    func update(with movies: [Movie]) {
        updateWithMovieCalls.append(movies)
    }
}
    

    
    

