//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___Router: ___VARIABLE_viperModuleName___WireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = ___VARIABLE_viperModuleName___ViewController(nibName: nil, bundle: nil)
        let interactor = ___VARIABLE_viperModuleName___Interactor()
        let router = ___VARIABLE_viperModuleName___Router()
        let presenter = ___VARIABLE_viperModuleName___Presenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }

}
