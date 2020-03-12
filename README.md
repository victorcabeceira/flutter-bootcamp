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
    -> Separate different job/role and they must be concerned about only their job/role

  - Inheritance
    -> When a class is able to inherit properties and methods from their parents

  - Polymorphism
    -> "Changing shapes": use @override/super to override or "inherit" a parents method

# Final vs const
  - Both mean that after assigned a value, it can't be changed
  - A final variable can be set only once
  - A const variable is a compile-time constant
    - It doesn't have access to run-time values (while final has), that's why classes has initial values as final, as they're only acquired only when the Widget is rendered
    - TL:DR; const stores things that don't need run-time operations, while final does

# Composition vs Inheritance
  Flutter widgets uses composition to create widgets, where a more complex widget is composed by other smaller widgets, instead of inheriting from one and changing it

# Dart maps
  Definition:
    Map<KeyType, ValueType> mapName {
      key: value
    }

  Usage:
    get specific value: mapName[key]
    get all keys of the map: mapName.keys
    get all values of the map: mapName.values
    get map length: mapName.length

# Stateful widgets lifecycle
  - initState() {}
    -> Called when the object is inserted into the tree
    -> @override
       void initState() {}

  - build() {}
    -> Called everytime the object is built (every state update)

  - deactivate() {}
    -> Called when the object is destroyed

# try/catch
  try {
    // logic
  } catch(e) {
    // exception logic
  }

# null aware operator
  If variable equals to null, used defaultValue
  variable ?? defaultValue

# static
  Useful to create class-wide variables, so it's not necessary to create an objetct to access its properties (can't be accessed through an instance)

# mixins
  Are a way of reusing a class's code in multiple class hierarchies.
  To use a mixin, use the $with keyword  followed by one or more mixin names.