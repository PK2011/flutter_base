import 'package:flutter/material.dart';

class ToastMessage {
  static showToastMessage(String message, {bool? isToastSuccess}) {
    Color bgColor = isToastSuccess != null
        ? isToastSuccess ? Colors.greenAccent : Colors.redAccent
        : Colors.white;
    Color textColor = isToastSuccess != null ? Colors.white : Colors.black87;
    // default Snack bar or third party toast can be used here.
  }

  static void showSnackBar(BuildContext? context,String message,String label,{VoidCallback? onPressed}){
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: label,
        onPressed: onPressed ?? (() {}),
      ),
    );
    ScaffoldMessenger.of(context!).showSnackBar(snackBar);
  }

}