//
//  DetailAssembly.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 30/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

final class DetailAssembly {
    private let navigationController: UINavigationController
	private let imageLoadingAssembly: ImageLoadingAssembly
    
   private(set) lazy var pushDetailNavigator = PushDetailNavigator(navigationController: navigationController, detailViewControllerProvider: self)

    init(navigationController: UINavigationController ,imageLoadingAssembly: ImageLoadingAssembly) {
        self.navigationController = navigationController
		self.imageLoadingAssembly = imageLoadingAssembly
        
	}

	func detailHeaderPresenter() -> DetailHeaderPresenter {
		return DetailHeaderPresenter(imageRepository: imageLoadingAssembly.imageRepository)
	}

	func posterStripPresenter() -> PosterStripPresenter {
		return PosterStripPresenter(imageRepository: imageLoadingAssembly.imageRepository)
	}
}

extension DetailAssembly: DetailViewControllerProvider{
    func movieViewController(withIdentifier identifier: Int64) -> UIViewController {
        //TODO
    }
    
    func showViewController(withIdentifier identifier: Int64) -> UIViewController {
        //TODO
    }
    
    
}
