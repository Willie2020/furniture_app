import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenwidth;
  static double? screenheight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? mymargign;
  //SizeConfig(this._mediaQueryData,this.screenheight,this.blockSizeVertical,this.blockSizeHorizontal,
  //this.screenwidth);

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenwidth = _mediaQueryData?.size.width;
    screenheight = _mediaQueryData?.size.height;
    blockSizeHorizontal = screenwidth! / 100;
    blockSizeVertical = screenheight! / 100;
    mymargign = screenwidth! / 24;
    //SizeConfig.co
  }
}
