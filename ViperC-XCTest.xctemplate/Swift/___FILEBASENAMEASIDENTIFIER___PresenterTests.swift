//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest

//@testable import YOUR_MODULE_NAME

class ___VARIABLE_viperModuleName___PresenterTests: XCTestCase {

    var presenter: ___VARIABLE_viperModuleName___Presenter!

    override func setUp() {
        super.setUp()
        presenter = ___VARIABLE_viperModuleName___Presenter(interface: ___VARIABLE_viperModuleName___Router.createModule() as?___VARIABLE_viperModuleName___ViewController,
                                                            interactor: ___VARIABLE_viperModuleName___Interactor(),
                                                            router: ___VARIABLE_viperModuleName___Router())
    }

    override func tearDown() {
        presenter = nil;
        interactor = nil;
        super.tearDown()
    }

    func testInit() {
        XCTAssertNotNil(presenter)
    }

}
