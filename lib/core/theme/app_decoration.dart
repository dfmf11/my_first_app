import 'package:flutter/material.dart';
// import 'package:dfmf11_s_application/core/app_export.dart';

import '../utils/color_constant.dart';
import '../utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get outlineRed6001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.red600,
          width: getHorizontalSize(
            3.00,
          ),
        ),
      );
  static BoxDecoration get fillGray40002 => BoxDecoration(
        color: ColorConstant.gray40002,
      );
  static BoxDecoration get outlineRed6002 => BoxDecoration(
        color: ColorConstant.red600,
        border: Border.all(
          color: ColorConstant.red600,
          width: getHorizontalSize(
            3.00,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray10001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray10001,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineRed600 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.red600,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: ColorConstant.gray400,
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: ColorConstant.blueGray10001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillRed600 => BoxDecoration(
        color: ColorConstant.red600,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillDeeporange600 => BoxDecoration(
        color: ColorConstant.deepOrange600,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtRoundedBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19.00,
    ),
  );

  static BorderRadius roundedBorder49 = BorderRadius.circular(
    getHorizontalSize(
      49.00,
    ),
  );

  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius txtRoundedBorder31 = BorderRadius.circular(
    getHorizontalSize(
      31.00,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius circleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius txtCircleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );
}
