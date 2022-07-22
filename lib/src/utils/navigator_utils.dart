import 'package:flutter/material.dart';

class NavigatorUtils {
  static navigateTo({required context, required screen, state}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) => screen),
    );
  }

  static navigateAndRestore({context, screen, onBack}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => screen))
        .then((val) {});
  }

  //Replace previous screen from stack and set new screen as the previous stack
  static navigateToReplace({required context, required screen}) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => screen));
  }

  //Remove all previous stack and set new screen as the fi
  static navigateAndRemoveUntil({required context, required screen}) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false);
  }

  //go back
  static navigateBack({required context}) {
    return Navigator.pop(context);
  }
}
