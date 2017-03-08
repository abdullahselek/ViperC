![ViperC](https://github.com/abdullahselek/ViperC/blob/master/images/viperc_header.png)

# ViperC
Xcode template for VIPER Architecture written in Objective-C

- ViperC creates modules for you when you want to use VIPER architecture in your projects. I hope it will be useful, and you can use it both in your Objective-C and Swift projects.

## Installation

- Clone this repository
- Go to repository main folder
- Then just run ```./install.sh``` and it will be ready

## Template Path

You can find ViperC under ```/Users/USER_NAME/Library/Developer/Xcode/Templates/File Templates/ViperC/ViperC.xctemplate```

## Usage

![ViperC Demo](https://github.com/abdullahselek/ViperC/blob/master/images/demo.gif)


## VIPER Diagram

![VIPER](https://github.com/abdullahselek/ViperC/blob/master/images/viper.png)

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

@protocol ToDoInteractorProtocol <NSObject>

- (void)setPresenter:(id<ToDoPresenterProtocol>)protocol;
- (id<ToDoPresenterProtocol>)getPresenterProtocol;

@end

#pragma mark - ViewProtocol

@protocol ToDoViewProtocol <NSObject>

- (void)setPresenter:(id<ToDoPresenterProtocol>)protocol;
- (id<ToDoPresenterProtocol>)getPresenterProtocol;

@end
```

### Interactor

```
NS_ASSUME_NONNULL_BEGIN

@interface ToDoInteractor: NSObject<ToDoInteractorProtocol>

@property (nonatomic, weak, nullable) id<ToDoPresenterProtocol> presenter;

@end

NS_ASSUME_NONNULL_END
```

### Presenter

```
NS_ASSUME_NONNULL_BEGIN

@interface ToDoPresenter: NSObject<ToDoPresenterProtocol>

@property (nonatomic, weak, nullable) id<ToDoViewProtocol> view;
@property (nonatomic, weak) id<ToDoInteractorProtocol> interactor;
@property (nonatomic, weak) id<ToDoWireframeProtocol> router;

- (instancetype)initWithInterface:(id<ToDoViewProtocol>)interface
                       interactor:(id<ToDoInteractorProtocol>)interactor
                           router:(id<ToDoWireframeProtocol>)router;

@end

NS_ASSUME_NONNULL_END
```

### WireFrame

```
@interface ToDoRouter: NSObject<ToDoWireframeProtocol>

@end
```

### View

```
NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewController: UIViewController<ToDoViewProtocol>

@property (nonatomic, nullable) id<ToDoPresenterProtocol> presenter;

@end

NS_ASSUME_NONNULL_END
```

## License

ViperC is released under the MIT license. See LICENSE for details.