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

class ___VARIABLE_viperModuleName___ViewControllerTests: QuickSpec {

    override func spec() {
        describe("___VARIABLE_viperModuleName___ViewController Tests") {
            var view: ___VARIABLE_viperModuleName___ViewController!

            beforeSuite {
                view = ___VARIABLE_viperModuleName___Router.createModule() as? ___VARIABLE_viperModuleName___ViewController
            }

            context("when created by router", {
                it("should succeed", closure: {
                    expect(view).notTo(beNil())
                    expect(view.presenter).notTo(beNil())
                })
            })
        }
    }

}
