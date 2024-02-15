import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'app_color.dart';

displayErrorToast(String description) {
  Fluttertoast.showToast(
    msg: description,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: appColor.error,
    textColor: Colors.white,
    fontSize: 14,
  );
}

displaySuccessToast(String description) {
  Fluttertoast.showToast(
    msg: description,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: appColor.success,
    textColor: Colors.white,
    fontSize: 14,
  );
}

displayInfoToast(String description) {
  Fluttertoast.showToast(
    msg: description,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: appColor.gray50,
    textColor: appColor.accent,
    fontSize: 14,
  );
}
