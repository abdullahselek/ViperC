//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol, ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol {

    weak private var view: ___FILEBASENAMEASIDENTIFIER___ViewProtocol?
    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol?
    private let router: ___FILEBASENAMEASIDENTIFIER___WireframeProtocol

    init(interface: ___FILEBASENAMEASIDENTIFIER___ViewProtocol, interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol?, router: ___FILEBASENAMEASIDENTIFIER___WireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
