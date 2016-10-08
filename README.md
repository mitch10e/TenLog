# TenLog
## A lightweight logger

[![CocoaPods](https://img.shields.io/cocoapods/v/TenLog.svg)]()
[![license](https://img.shields.io/github/license/mitch10e/TenLog.svg)]()

[![GitHub stars](https://img.shields.io/github/stars/mitch10e/TenLog.svg?style=social&label=Star)]()
[![Twitter Follow](https://img.shields.io/twitter/follow/mitchell10e.svg?style=social&label=Follow)]()

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

```ruby
debug("Hello, World!")
debug("How are you?\nI am fine.")
debug("Do you like to have organized logs in your project?\nYes! We hate the timestamp stuff!\nWe usually don't even read the timestamps!\nAnd what is it with those random AppName[Numbers:Numbers] stuff?\nAverage developers don't care about this stuff!\nWe just want something easy to scan through!")

debug("http://www.example.com", tag: "get")
debug("http://www.example.com", tag: "200")

debug("http://www.failurl.com", tag: "get")
debug("http://www.failurl.com", tag: "404")

TenLogSettings.disable(tag: "get")
TenLogSettings.disable(tag: "200")
TenLogSettings.disable(tag: "404")
debug("http://www.example.com", tag: "get")
debug("http://www.example.com", tag: "200")

debug("http://www.failurl.com", tag: "get")
debug("http://www.failurl.com", tag: "404")


let tableFlip = "(╯°□°）╯︵ ┻━┻"
debug(tableFlip, tag: "rage")

debug("Just use debug() like a normal print()!", tag: "Info")
debug("Check out the TenLogSettings to modify how the logs work!", tag: "Info")

debug("Item 1", "Item 2", "Item 3", tag: "Test")

debug("Don't forget to ⭐️ the repo!\n\tThank You!", tag: "Vital")
```

will output the following:

```ruby
DEBUG  | Hello, World!
DEBUG  | How are you?
       | I am fine.
       ˇ
DEBUG  | Do you like to have organized logs in your project?
       | Yes! We hate the timestamp stuff!
       | We usually don't even read the timestamps!
       | And what is it with those random AppName[Numbers:Numbers] stuff?
       | Average developers don't care about this stuff!
       | We just want something easy to scan through!
       ˇ
GET    | http://www.example.com
200    | http://www.example.com
GET    | http://www.failurl.com
404    | http://www.failurl.com
RAGE   | (╯°□°）╯︵ ┻━┻
INFO   | Just use debug() like a normal print()!
INFO   | Check out the TenLogSettings to modify how the logs work!
TEST   | Item 1
TEST   | Item 2
TEST   | Item 3
VITAL  | Don't forget to ⭐️ the repo!
       | 	Thank You!
       ˇ
```



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

