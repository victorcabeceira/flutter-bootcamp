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