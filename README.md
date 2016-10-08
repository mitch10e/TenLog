# TenLog
## A lightweight logger

[![CocoaPods](https://img.shields.io/cocoapods/v/TenLog.svg?maxAge=2592000)]()
[![license](https://img.shields.io/github/license/mitch10e/TenLog.svg?maxAge=2592000)]()
[![GitHub tag](https://img.shields.io/github/tag/mitch10e/TenLog.svg?maxAge=2592000)]()
[![GitHub stars](https://img.shields.io/github/stars/mitch10e/TenLog.svg?style=social&label=Star&maxAge=2592000)]()
[![Twitter Follow](https://img.shields.io/twitter/follow/mitchell10e.svg?style=social&label=Follow&maxAge=2592000)]()

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
    pod 'TenLog', '~> 1.0.0'
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

[v1.0.0](https://github.com/mitch10e/TenLog/blob/develop/CHANGELOG.md#100)

[v0.2.2](https://github.com/mitch10e/TenLog/blob/develop/CHANGELOG.md#022)

[v0.1.0](https://github.com/mitch10e/TenLog/blob/develop/CHANGELOG.md#010)

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

