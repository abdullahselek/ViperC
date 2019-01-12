//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___PresenterProtocol {

    weak private var view: ___VARIABLE_viperModuleName___ViewProtocol?
    var interactor: ___VARIABLE_viperModuleName___InteractorInputProtocol?
    private let router: ___VARIABLE_viperModuleName___WireframeProtocol

    init(interface: ___VARIABLE_viperModuleName___ViewProtocol, interactor: ___VARIABLE_viperModuleName___InteractorInputProtocol?, router: ___VARIABLE_viperModuleName___WireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}

extension ___VARIABLE_viperModuleName___Presenter: ___VARIABLE_viperModuleName___InteractorOutputProtocol {
    // MARK: ___VARIABLE_viperModuleName___InteractorOutputProtocol functions
}
