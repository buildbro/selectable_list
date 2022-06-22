<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Selectedable List is a flutter package that offers a widget for rendering lists that users of your app can tap on items to select them.
Everytime an item is selected, the widget returns data about the current selections. You can use this data in your app how best you prefer.

## Features

1. Custom Selectable List Lidget
2. Item icon
3. Selection icon
4. Item select callback
5. Support for list of custom Object/Model.

## Getting started

First, you need to add the package to your flutter project.
At the moment you can do that by adding the following lines to the `dependencies` section of your `pubspec.yaml` file:
```dart
selectable_list:
    git: https://github.com/buildbro/selectable_list.git

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
List<Movie> movies = [
    Movie("1", "First Item", "description", "photo"),
    Movie("2", "Second Item", "description", "photo"),
  ];
  
String data = "";
  
//Add the following code where you wish to show the Custom List Widget
Column(
              children: [
                SelectableList(
                  list: movies,
                  itemLabelKey: "title",
                  itemIconKey: "itemIconKey",
                  itemIdKey: "id",
                  itemChanged: (value) {
                    data = value["selected"];
                    print(value);
                  },
                ),
                MaterialButton(onPressed: (){ print(data); }, child: Text("Debug"),)
              ],
            )
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
