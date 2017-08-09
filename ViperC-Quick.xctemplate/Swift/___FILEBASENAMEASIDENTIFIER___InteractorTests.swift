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

class ___FILEBASENAMEASIDENTIFIER___InteractorTests: QuickSpec {

    override func spec() {
        var view: ___FILEBASENAMEASIDENTIFIER___ViewController!
        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!

        beforeSuite {
            let router = ___FILEBASENAMEASIDENTIFIER___Router()
            view = ___FILEBASENAMEASIDENTIFIER___Router.createModule() as? ___FILEBASENAMEASIDENTIFIER___ViewController
            presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(interface: view, interactor: interactor, router: router)

            view.presenter = presenter
            interactor.presenter = presenter
        }
    }

}
