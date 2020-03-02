# flutter-bootcamp

https://www.udemy.com/course/flutter-bootcamp-with-dart/

# What is flutter?

- UI toolkit that makes it easier to design beautiful interfaces for all sorts of screen sizes and devices
- Has pre-built widgets that makes it easier to layout apps
- Borrow some concepts from web design
- Flutter Asks for a blank screen and draws ("paints") on that blank window, making it usable on practically any platform

- In flutter, widgets are like a lego blocks that you can customize and plug them together and create an app that can be deployed practically anywhere

# Why flutter?

- One codebase to maintain as it uses the same language: Dart
- Simple and flexible layout system
- Constraints to handle different screen sizes
- Inspired by web, using, flex, grids, rows, columns, etc. All using widgets
- "Split second" reload, similar as refresh button
- Open source: Access to original source code (easier to understand and use)

# The anatomy of a fluter app

An example

        Scaffold
        /       \
  App Bar       Container
                    |
                  Column
                  /     \
                Row     Text
                /  \
              Text  Icon

# YAML - YAML ain't markup language
  - Be careful with indentation
  - Setup assets, fonts, etc.
    - After setting up a new configuration, click on get packages

# Change app icon
  -> Generate your icons on: https://appicon.co/
  -> Android
    - Access: /android/app/src/main/res
      - Delete and replace the folders started with "mipmap"
  -> iOS
    - Access:  /ios/Runner/
      - Delete and replace the folder "Assets.xscassets"

# Hot reload vs hot restart
  - Hot reload changes visually and main state
  - Hot restart restarts the app, resetting state

# Errors and solutions
  - Target of URI doesn't exist: 'package:flutter/material.dart'.
    - (Optional) delete pubspeck.lock
      - Run: flutter pub get
    - (Optional) remove .packages
      - Run: flutter packages get

# OOP (4 pillars)
  - Abstraction
    -> Make something complex into smaller and abstract pieces

  - Encapsulation
  - Inheritance
  - Polymorphism
