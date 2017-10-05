//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Quick
import Nimble

//@testable import YOUR_MODULE_NAME

class ___VARIABLE_viperModuleName___InteractorTests: QuickSpec {

    override func spec() {
        var view: ___VARIABLE_viperModuleName___ViewController!
        let interactor = ___VARIABLE_viperModuleName___Interactor()
        var presenter: ___VARIABLE_viperModuleName___Presenter!

        beforeSuite {
            let router = ___VARIABLE_viperModuleName___Router()
            view = ___VARIABLE_viperModuleName___Router.createModule() as? ___VARIABLE_viperModuleName___ViewController
            presenter = ___VARIABLE_viperModuleName___Presenter(interface: view,
                                                                interactor: interactor,
                                                                router: router)

            view.presenter = presenter
            interactor.presenter = presenter
        }
    }

}
