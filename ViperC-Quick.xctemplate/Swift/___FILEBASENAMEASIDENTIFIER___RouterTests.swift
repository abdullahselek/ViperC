//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Quick
import Nimble

//@testable import YOUR_MODULE_NAME;

class ___FILEBASENAMEASIDENTIFIER___RouterTests: QuickSpec {

    override func spec() {
        describe("Router Tests") {
            describe(".createModule()", {
                var view: ___FILEBASENAMEASIDENTIFIER___ViewController!

                beforeEach {
                    view = ___FILEBASENAMEASIDENTIFIER___Router.createModule() as? ___FILEBASENAMEASIDENTIFIER___ViewController
                }

                it("should create orders module successfully", closure: {
                    expect(view).notTo(beNil())
                    expect(view.presenter).notTo(beNil())
                    expect(view.presenter?.interactor).notTo(beNil())
                })
            })
        }
    }

}
