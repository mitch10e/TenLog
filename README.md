# TenLog
## A lightweight logger

TenLog is an alternative to using the default ```print()``` statement in your Swift projects, 
Created and maintained by [Mitchell Tenney](https://gitlab.com/u/mitch10e)

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

To integrate TenLog into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'TenLog', '~> 0.2.2'
end
```

Then, run the following command:

```bash
$ pod install
```

## Usage

To use TenLogs, simply use the ```debug()``` statement as if it were ```print()```

You can change the settings of the output via the ```TenLogSettings``` class.


## License
- This library uses the MIT License
  - https://opensource.org/licenses/mit-license.html

## Changelog

[v0.2.2](https://gitlab.com/mitch10e/tenlog/blob/develop/CHANGELOG.md#022)

[v0.1.0](https://gitlab.com/mitch10e/tenlog/blob/develop/CHANGELOG.md#010)

## Versioning

TenLog uses the Semantic Versioning guidelines as much as possible. Releases will be numbered with the following format:

`<major>.<minor>.<patch>`

For more information on Semantic Versioning, please visit http://semver.org.

## Author
- Email: mitch10e@gmail.com
- Twitter: http://twitter.com/mitchell10e
- GitHub: https://github.com/mitch10e
- GitLab: https://gitlab.com/u/mitch10e
- LinkedIn: https://www.linkedin.com/in/mitch10e

