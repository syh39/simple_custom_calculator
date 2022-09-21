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
## Features

![1](https://user-images.githubusercontent.com/54565079/191467636-7eab2ffb-3043-45dd-ab2f-51330c13b916.JPG)
![2](https://user-images.githubusercontent.com/54565079/191467656-04694beb-b710-42ce-8d13-cf5f00f3b96d.JPG)


## Getting started

To use this plugin, add `simple_custom_calculator` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  simple_custom_calculator:
```

Import the library in your file.
```dart
import 'package:simple_custom_calculator/simple_custom_calculator.dart';
```


## Usage

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: SimpleCustomCalculator(
              width: 500,
              height: 600,
              backgroundColor: Colors.black.withOpacity(0.8),
              buttonColor: Colors.blueGrey,
              buttonIsRectangle: true,
              buttonPadding: 3.0,
              numberSize: 39,

        )));
  }
}
```


