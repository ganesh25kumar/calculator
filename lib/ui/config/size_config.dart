import 'package:flutter/material.dart';

class SizeConfig {
  static double? heightMultiplier;
  static double? imageSizeMultiplier;
  static bool isMobilePortrait = false;
  static bool isPortrait = true;
  static double? textMultiplier;
  static double? widthMultiplier;

  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;
  static double? _screenHeight;
  static double? _screenWidth;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth! < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockSizeHorizontal = _screenWidth! / 100;
    _blockSizeVertical = _screenHeight! / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
    widthMultiplier = _blockSizeHorizontal;
  }
}
