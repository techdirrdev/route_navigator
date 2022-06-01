# route_navigator

This package helps to manage the navigate between screens in an elegant and easy way.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/route_navigator/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `route_navigator` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  route_navigator:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/techdirrdev/route_navigator/tree/master/example) here.

Navigate screen
```dart
NavigateWithName.to(context, Routes.secondScreen,
  arguments: {'name': 'techdirr'}, result: (result) {
    if (result.resultOk) {
      log("Owner: ${result.data['ownerName']}");
    }
});
```

Fetch data from screen
```dart
NavigateWithName.getArguments(context);
```

