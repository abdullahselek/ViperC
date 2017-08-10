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

class ___FILEBASENAMEASIDENTIFIER___PresenterTests: QuickSpec {

    override func spec() {
        describe("Presenter Tests") {
            describe(".init(interface:interactor:router:)", {
                var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!

                beforeEach {
                    presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(interface: ___FILEBASENAMEASIDENTIFIER___Router.createModule() as? ___FILEBASENAMEASIDENTIFIER___ViewController, interactor: ___FILEBASENAMEASIDENTIFIER___Interactor(), router: ___FILEBASENAMEASIDENTIFIER___Router())
                }

                it("successfully initialises", closure: {
                    expect(presenter).notTo(beNil())
                    expect(presenter.interactor).notTo(beNil())
                })
            })
        }
    }

}
