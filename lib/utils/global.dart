import 'package:flutter/material.dart';

CustomColors CC = CustomColors();

ApelieColors AC = ApelieColors();

class ApelieColors {
  Color red({double opacity = 1.0}) {
    return Color.fromRGBO(234, 82, 51, opacity);
  }

  Color green({double opacity = 1.0}) {
    return Color.fromRGBO(135, 168, 121, opacity);
  }

  Color yellow({double opacity = 1.0}) {
    return Color.fromRGBO(253, 199, 44, opacity);
  }

  Color darkGrey({double opacity = 1.0}) {
    return Color.fromRGBO(60, 60, 59, opacity);
  }

  Color grey({double opacity = 1.0}) {
    return Color.fromRGBO(246, 245, 245, opacity);
  }

  Color pink({double opacity = 1.0}) {
    return Color.fromRGBO(214, 154, 197, opacity);
  }

  Color orange({double opacity = 1.0}) {
    return Color.fromRGBO(234, 127, 20, opacity);
  }

  Color blue({double opacity = 1.0}) {
    return Color.fromRGBO(37, 55, 134, opacity);
  }

  Color scoreColor(double score, {double opacity = 1.0}) {
    if (score >= 8) {
      return green();
    } else if (score >= 4) {
      return orange();
    } else {
      return red();
    }
  }
}

class CustomColors {
  Color chartColor(int type) {
    switch (type) {
      case 0:
        return Color.fromRGBO(251, 133, 0, 1);
      case 1:
        return Color.fromRGBO(195, 142, 112, 1);
      case 2:
        return Color.fromRGBO(71, 101, 115, 1);
      case 3:
        return Color.fromRGBO(238, 96, 85, 1);
      case 4:
        return Color.fromRGBO(246, 189, 96, 1);
      case 5:
        return Color.fromRGBO(142, 202, 230, 1);
    }
    return Color.fromRGBO(251, 133, 0, 1);
  }

  Color orange({double opacity = 1.0}) {
    return Color.fromRGBO(232, 127, 0, opacity);
  }

  Color green({double opacity = 1.0}) {
    return Color.fromRGBO(134, 167, 120, opacity);
  }

  Color yellow({double opacity = 1.0}) {
    return Color.fromRGBO(254, 200, 42, opacity);
  }

  Color red({double opacity = 1.0}) {
    return Color.fromRGBO(238, 81, 50, opacity);
  }

  Color purple({double opacity = 1.0}) {
    return Color.fromRGBO(214, 155, 203, opacity);
  }

  Color blue2({double opacity = 1.0}) {
    return Color.fromRGBO(67, 97, 238, opacity);
  }

  Color blue({double opacity = 1.0}) {
    return Color.fromRGBO(63, 55, 201, opacity);
  }

  Color white({double opacity = 1.0}) {
    return Color.fromRGBO(246, 246, 246, opacity);
  }

  Color grey({double opacity = 1.0}) {
    return Color.fromRGBO(60, 60, 58, opacity);
  }

  Color black({double opacity = 1.0}) {
    return Color.fromRGBO(0, 0, 0, opacity);
  }

  Color primary({double opacity = 1.0}) {
    return Color.fromRGBO(252, 171, 16, opacity);
  }

  Color success({double opacity = 1.0}) {
    return Color.fromRGBO(68, 175, 105, opacity);
  }

  Color danger({double opacity = 1.0}) {
    return Color.fromRGBO(230, 57, 70, opacity);
  }

  Color info({double opacity = 1.0}) {
    return Color.fromRGBO(134, 207, 218, opacity);
  }

  Color warning({double opacity = 1.0}) {
    return Color.fromRGBO(252, 171, 16, opacity);
  }

  Color secondary({double opacity = 1.0}) {
    //
    return Color.fromRGBO(179, 183, 187, opacity);
  }

  Color lightGray({double opacity = 1.0}) {
    //
    return Color.fromRGBO(222, 226, 230, opacity);
  }

  Color yellowScore() {
    return Color.fromRGBO(255, 214, 10, 1);
  }

  Color scoreColor(double score, {double opacity = 1.0}) {
    if (score >= 8) {
      return success();
    } else if (score >= 4) {
      return orange();
    } else {
      return danger();
    }
  }
}
