//
//  AppAssembly.swift
//  TMDb
//
//  Created by Irma Blanco on 14/04/2018.
//  Copyright © 2018 Guille Gonzalez. All rights reserved.
//

import Foundation
import TMDbCore

final class  AppAssembly {
    private(set) lazy var window = UIWindow(frame: UIScreen.main.bounds)
    //Hacemos estas dos vbles privadas para que el appdelegate nunca pueda tener la responsabilidad de decidir que interfaz tiene que mostrar
    private lazy var rootViewController = UINavigationController()
    private lazy var coreAssembly = CoreAssembly(navigationController:rootViewController )
    
    func setupRootViewController() {
        /*if UIUserInterfaceIdiom == .ipad {
            
        }*/
        
        let featuredViewController = coreAssembly.featuredAssembly.viewController()
        rootViewController.pushViewController(featuredViewController, animated: false)
        window.rootViewController = rootViewController
    }
}





//let initialViewController = appAssembly.coreAssembly.featuredAssembly.viewController()
//appAssembly.rootViewController.pushViewController(initialViewController, animated: false)
//
//appAssembly.window.rootViewController = appAssembly.rootViewController
//appAssembly.window.makeKeyAndVisible()
