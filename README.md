![License](https://img.shields.io/dub/l/vibe-d.svg)

![ViperC](https://raw.githubusercontent.com/abdullahselek/ViperC/master/images/viperc_header.png)

# ViperC
Xcode template for VIPER Architecture for both Objective-C and Swift.

- ViperC creates modules for you when you want to use VIPER architecture in your projects. You can choose your language for the VIPER modules that will be created.

## Installation

- Clone this repository
- Go to repository main folder
- ```./install.sh ViperC``` installs ViperC module for Objective-C or Swift.
- ```./install.sh ViperC-Quick``` installs ViperC unit tests module for Objective-C or Swift. It uses **Quick** and **Expecta** for Objective-C and **Quick** and **Nimble** for Swift.
- ```./install.sh ViperC-XCTest``` installs ViperC unit tests module for Objective-C or Swift. It uses default **XCTest**.

## Template Path

You can find ViperC under ```/Users/USER_NAME/Library/Developer/Xcode/Templates/File Templates/ViperC/ViperC.xctemplate```

## Usage

![ViperC Demo](https://raw.githubusercontent.com/abdullahselek/ViperC/master/images/demo.gif)


## VIPER Diagram

![VIPER](https://raw.githubusercontent.com/abdullahselek/ViperC/master/images/viper.png)

## Generated Source Code

Example for a ToDO module:

### Protocols

```
#pragma mark - WireFrameProtocol

@protocol ToDoWireframeProtocol <NSObject>

@end

#pragma mark - PresenterProtocol

@protocol ToDoPresenterProtocol <NSObject>

@end

#pragma mark - InteractorProtocol

@protocol ToDoInteractorOutputProtocol <NSObject>

@end

@protocol ToDoInteractorInputProtocol <NSObject>

- (void)setOutput:(id<ToDoInteractorOutputProtocol>)output;
- (id<ToDoInteractorOutputProtocol>)getOutputProtocol;

@end

#pragma mark - ViewProtocol

@protocol ToDoViewProtocol <NSObject>

@end
```

### Interactor

```
NS_ASSUME_NONNULL_BEGIN

@interface ToDoInteractor: NSObject<ToDoInteractorInputProtocol>

@property (nonatomic, weak, nullable) id<ToDoInteractorOutputProtocol> output;

@end

NS_ASSUME_NONNULL_END
```

### Presenter

```
NS_ASSUME_NONNULL_BEGIN

@interface ToDoPresenter: NSObject<ToDoInteractorOutputProtocol>

@property (nonatomic, weak, nullable) id<ToDoViewProtocol> view;
@property (nonatomic) id<ToDoInteractorInputProtocol> interactor;
@property (nonatomic, weak) id<ToDoWireframeProtocol> router;

- (instancetype)initWithInterface:(id<ToDoViewProtocol>)interface
                       interactor:(id<ToDoInteractorInputProtocol>)interactor
                           router:(id<ToDoWireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END
```

### WireFrame

```
@interface ToDoRouter: NSObject<ToDoWireframeProtocol>

@property (nonatomic, weak) ToDoViewController *viewController;

+ (UIViewController *)createModule;

@end
```

### View

```
NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewController: UIViewController<ToDoViewProtocol>

@property (nonatomic) ToDoPresenter *presenter;

@end

NS_ASSUME_NONNULL_END
```

## License

ViperC is released under the MIT license. See LICENSE for details.