import 'package:flutter/widgets.dart';

class AssetsLocation {
  static ImageProvider iconLocation(String iconName) {
    final location = AssetImage('assets/icons/$iconName.png');
    return location;
  }

  static ImageProvider imageLocation(String imageName) {
    final location = AssetImage('assets/images/$imageName.png');
    return location;
  }
}
