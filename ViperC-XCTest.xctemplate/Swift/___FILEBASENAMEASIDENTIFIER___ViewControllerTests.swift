//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest

//@testable import YOUR_MODULE_NAME

class ___VARIABLE_viperModuleName___ViewControllerTests: XCTestCase {

    func testInit() {
        guard let view = ___VARIABLE_viperModuleName___Router.createModule() as? ___VARIABLE_viperModuleName___ViewController else {
            XCTFail()
            return
        }
        XCTAssertNotNil(view)
        XCTAssertNotNil(view.presenter)
    }

}
