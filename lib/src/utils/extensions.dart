import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

extension StringFormating on String {
  interpolateApiString({List<dynamic>? params}) {
    return _interpolate(this, params: params!);
  }
}

String _interpolate(String string, {required List<dynamic> params}) {
  String result = string;
  for (int i = 0; i < params.length; i++) {
    result = result.replaceAll('{$i}', params[i].toString());
  }
  return result;
}
