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

class ___VARIABLE_viperModuleName___PresenterTests: QuickSpec {

    override func spec() {
        describe("___VARIABLE_viperModuleName___Presenter Tests") {
            describe(".init(interface:interactor:router:)", {
                var presenter: ___VARIABLE_viperModuleName___Presenter!

                beforeEach {
                    presenter = ___VARIABLE_viperModuleName___Presenter(interface: ___VARIABLE_viperModuleName___Router.createModule() as?___VARIABLE_viperModuleName___ViewController,
                                                                        interactor: ___VARIABLE_viperModuleName___Interactor(),
                                                                        router: ___VARIABLE_viperModuleName___Router())
                }

                it("successfully initialises", closure: {
                    expect(presenter).notTo(beNil())
                    expect(presenter.interactor).notTo(beNil())
                })
            })
        }
    }

}
