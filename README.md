# PluralLoc
A Sample on how to localize plural strings in iOS. And "99 Bottles of Beer on the Wall" in Russian.


## Background

Today, in a code review I again saw something like this:

```swift
if number > 1 {
	// use plural
} else {
	// use singular
}
```

**Don't do that**

I am not sure if it was correct for the native language of the developer, it is worng in most languages. But to the rescue, Apple provides a system to localize your plural forms, and this project is a sample for it.

## Supported Languages

Currently, the following languages have been [implemented](Plural%20Loc/Localizable.xcstrings):

- [x] Chinese (simplified)
- [x] English
- [x] French
- [x] German
- [x] Polish
- [x] Romanian
- [x] Russian
- [x] Ukrainian

You are more than welcome to create a pull request for your language.

P.S.: The Swift Playground contains the swift version of the "99 Bottles Of Beer" algorithm in Russian
