# AnimatedTextFieldCounter

[![CI Status](https://img.shields.io/travis/azattgoktas@gmail.com/AnimatedTextFieldCounter.svg?style=flat)](https://travis-ci.org/azattgoktas@gmail.com/AnimatedTextFieldCounter)
[![Version](https://img.shields.io/cocoapods/v/AnimatedTextFieldCounter.svg?style=flat)](https://cocoapods.org/pods/AnimatedTextFieldCounter)
[![License](https://img.shields.io/cocoapods/l/AnimatedTextFieldCounter.svg?style=flat)](https://cocoapods.org/pods/AnimatedTextFieldCounter)
[![Platform](https://img.shields.io/cocoapods/p/AnimatedTextFieldCounter.svg?style=flat)](https://cocoapods.org/pods/AnimatedTextFieldCounter)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Features
- [x] Set Maximum Length Of UITextfield.
- [x] Easy Customizable From Storyboard
- ![Demo](https://github.com/azatgoktas/AnimatedTextFieldCounter/blob/master/ScreenShots/animated.gif)
## Requirements
- iOS 9.0 or Newer

## Installation

AnimatedTextFieldCounter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AnimatedTextFieldCounter'
```
## How To Use?

#### Adding Programmatically
```swift
let textField = AnimatedTextFieldCounter(frame: CGRect(x: 40, y: 80, width: 320, height: 30), maxLength: 5, heightOfCounterView: 4, animationDuration: 0.2, shakeCount: 1)

self.view.addSubview(textField)
```

#### Storyboard Support.
- Drag and drop a UITextField from Object Library.
- Go to identity inspector and set class to AnimatedTextFieldCounter.
- And go back to Attributes Inspector. Here we go!
- ![Storyboard](https://github.com/azatgoktas/AnimatedTextFieldCounter/blob/master/ScreenShots/setup.png)

#### Using the delegate
Import The AnimatedTextFieldCounter Class
```swift
import AnimatedTextFieldCounter
```
Add the delegate to your class
```swift
class ViewController: UIViewController, AnimatedTextFieldCounterDelegate
```
Then set the delegate 
```swift
textField.counterDelegate = self
```
And use the reachedMaxLimit Method.
```swift
func reachedMaxLimit(textfield: AnimatedTextFieldCounter) {
    print("hey!")
}
```
## Author

Azat Goktas, azattgoktas@gmail.com

## License

AnimatedTextFieldCounter is available under the MIT license. See the LICENSE file for more info.
