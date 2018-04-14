//
//  FeaturedPresentedTests.swift
//  TMDbCoreTests
//
//  Created by Irma Blanco on 14/04/2018.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import XCTest
@testable import TMDbCore

class FeaturedPresentedTests: XCTestCase {
    //sut : system under test
    
    private var sut: FeaturedPresenter!
    
    //Collaborators
    private let featuredViewMock = FeaturedViewMock()
    private let detailNavigatorMock = DetailNavigatorMock()

    
    override func setUp() {
        //Esto se va a ejecutar cada vez que se ejecute un test
        super.setUp()
        
        sut = FeaturedPresenter(detailNavigator: detailNavigatorMock)
        sut.view = featuredViewMock
       
    }
    
    func test_didLoad_setHeaderTitles() {
        //when
        sut.didLoad()
        
        //Then
        XCTAssertEqual(featuredViewMock.setShowHeaderTitleCalls.count, 1)
        XCTAssertEqual(featuredViewMock.setShowHeaderTitleCalls.first, NSLocalizedString("ON TV", comment: ""))
        XCTAssertEqual(featuredViewMock.setMoviesHeaderTitleCalls.count, 1)
        XCTAssertEqual(featuredViewMock.setMoviesHeaderTitleCalls.first, NSLocalizedString("IN THEATERS", comment: ""))
    }
    
    
        //given       //when         //then
    func testShow_didSelectShow_navigatesToShow(){
        //given
        let show = Show(identifier: 42,
                        title: "Test",
                        posterPath: nil,
                        backdropPath: nil,
                        firstAirDate: nil,
                        genreIdentifiers: [])
        
        //When
        sut.didSelect(show: show)
        //Then
        XCTAssertEqual(detailNavigatorMock.navigateToShowCalls.count, 1)
        XCTAssertEqual(detailNavigatorMock.navigateToShowCalls.first, show.identifier)
    }
    
    //given       //when         //then
    func testMovie_didSelectMovie_navigatesToMovie(){
        //given
        let movie = Movie(identifier: 42,
                          title: "Test",
                          posterPath: nil,
                          backdropPath: nil,
                          releaseDate: nil,
                          genreIdentifiers: [])
        
        //When
        sut.didSelect(movie: movie)
        //Then
        XCTAssertEqual(detailNavigatorMock.navigateToMovieCalls.count, 1)
        XCTAssertEqual(detailNavigatorMock.navigateToMovieCalls.first, movie.identifier)
    }

    
}
