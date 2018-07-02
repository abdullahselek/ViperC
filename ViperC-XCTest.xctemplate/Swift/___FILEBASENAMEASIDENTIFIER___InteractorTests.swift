//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest

//@testable import YOUR_MODULE_NAME

class ___VARIABLE_viperModuleName___InteractorTests: XCTestCase {

    var view: ___VARIABLE_viperModuleName___ViewController!
    let interactor = ___VARIABLE_viperModuleName___Interactor()
    var presenter: ___VARIABLE_viperModuleName___Presenter!

    override func setUp() {
        super.setUp()

        let router = ___VARIABLE_viperModuleName___Router()
        view = ___VARIABLE_viperModuleName___Router.createModule() as? ___VARIABLE_viperModuleName___ViewController
        presenter = ___VARIABLE_viperModuleName___Presenter(interface: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
    }

    override func tearDown() {
        presenter = nil;
        view = nil;
        super.tearDown()
    }

}
