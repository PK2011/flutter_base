# Flutter Base
A Flutter Material project with useful widgets to increase the development speed. This repository has readymade widgets, extensions, xhr calls and project structure which can be used on the go.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Contents
### Extenstions
This repo has following extensions. These extensions are purely to reduce the number of lines of code and increase the readability
- String
- Widget
- Int

#### String
Following string manipulations can be done easily
- Validate Mail: ```string.validateMail()```
- Validate URL: ```string.validateMail()```
- Validate Phone: ```string.validateMail()```
- Captilise first letter of the String: ```Text(string.inCaps)```
- Captilise first letter of all words in the string ```string.capitalizeFirstOfEach```
- Captilise all letters in the string: ```string.allInCaps```

#### Widget
Widget extensions can be used with other widgets to reduce the number of lines of codes and to increase the development speed.
- withSize(): ```Container().withSize(width: 60, height: 100)```
  which is smiliar to
```
SizedBox(
width: 60,
height: 100,
child: Container())
```
- withWidth(): ```Container().withWidth(60)```
- withHeight(): ```Container().withHeight(100)```
- paddingAll(): ```Container().paddingAll(10)```
  similarly
  -- paddingTop()
  -- paddingBottom()
  -- paddingRight()
  -- paddingLeft()
  -- paddingSymmetric() and
  -- paddingOnly(...)
- visible(): ```Cotainer().visible(true)```
- center(): ```Container().center()```
- withScroll(): SingleChildScrollView widget
- cornerRadiusWithClipRRect()
  and many more widget extensions are there which you can use

#### Int
With an integer following widgets can be easily used with the extensions.
- 16.height => Sizedbox(height: 16)
- 16.width => Sizedbox(width: 16)
- 1000.microseconds => Duration(microseconds: 1000)
  -- milliseconds
  -- seconds
  -- minutes
  -- hours
  -- days
- 16.numberSuffix() which will return 16th

### Widgets
This repo has some readymade widgets which can be used on the go.
- buttons
- checkbox
- container
- Network Image with loader


