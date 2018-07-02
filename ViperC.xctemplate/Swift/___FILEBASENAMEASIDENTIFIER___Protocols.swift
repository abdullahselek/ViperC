//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: WireFrameProtocol

protocol ___VARIABLE_viperModuleName___WireframeProtocol: class {

}

// MARK: PresenterProtocol

protocol ___VARIABLE_viperModuleName___PresenterProtocol: class {

    var interactor: ___VARIABLE_viperModuleName___InteractorInputProtocol? { get set }

}

// MARK: InteractorProtocol

protocol ___VARIABLE_viperModuleName___InteractorOutputProtocol: class {

    /** Interactor -> Presenter */
}

protocol ___VARIABLE_viperModuleName___InteractorInputProtocol: class {

    var presenter: ___VARIABLE_viperModuleName___InteractorOutputProtocol? { get set }

    /** Presenter -> Interactor */
}

// MARK: ViewProtocol

protocol ___VARIABLE_viperModuleName___ViewProtocol: class {

    var presenter: ___VARIABLE_viperModuleName___PresenterProtocol? { get set }

    /** Presenter -> ViewController */
}
