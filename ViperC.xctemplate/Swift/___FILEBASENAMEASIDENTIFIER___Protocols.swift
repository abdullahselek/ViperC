//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: WireFrameProtocol
protocol ___FILEBASENAMEASIDENTIFIER___WireframeProtocol: class {

}
// MARK: PresenterProtocol
protocol ___FILEBASENAMEASIDENTIFIER___PresenterProtocol: class {

    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol? { get set }
}

// MARK: InteractorProtocol
protocol ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol: class {

    /** Interactor -> Presenter */
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol: class {

    var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol? { get set }

    /** Presenter -> Interactor */
}

// MARK: ViewProtocol
protocol ___FILEBASENAMEASIDENTIFIER___ViewProtocol: class {

    var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol? { get set }

    /** Presenter -> ViewController */
}
