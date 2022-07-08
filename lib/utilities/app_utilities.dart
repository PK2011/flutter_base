import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:flutter_base/widgets/toast_message.dart';

class Utilities {

  static copyDataToClipBoard(String textToCopy, String itemType) {
    Clipboard.setData(ClipboardData(text: textToCopy));
    ToastMessage.showToastMessage("$itemType copied!");
  }

  static openUrl(Uri url) async {
    // if (await canLaunchUrl(url)) {
    //   if(isWindows || isMacOS) {
    //     launchUrl(url, mode: LaunchMode.externalApplication);
    //   } else {
    //     launchUrl(url, mode: LaunchMode.platformDefault);
    //   }
    // } else {
    //   _copyDataToClipBoard(url.toString(), 'Url');
    // }
  }

  static openMailer(String mailId) async {
    if (mailId == "") {
      ToastMessage.showToastMessage("No mail found");
    } else {
      // if (await canLaunchUrlString("mail:$mailId")) {
      //   launchUrlString("mail:$mailId");
      // } else {
      //   _copyDataToClipBoard(mailId, 'Mail Id');
      // }
    }
  }

  static openDialler(String phone) async {
    if (phone == "") {
      ToastMessage.showToastMessage("No contact number found");
    } else {
      // if (await canLaunchUrlString("tel:$phone")) {
      //   launchUrlString("tel:$phone");
      // } else {
      //   _copyDataToClipBoard(phone, 'Contact Number');
      // }
    }
  }
}

class DecimalTextInputFormatter extends TextInputFormatter {
  DecimalTextInputFormatter({required this.decimalRange})
      : assert(decimalRange > 0);

  final int decimalRange;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, // unused.
      TextEditingValue newValue,
      ) {
    TextSelection newSelection = newValue.selection;
    String truncated = newValue.text;

    String value = newValue.text;

    if (value.contains(".") &&
        value.substring(value.indexOf(".") + 1).length > decimalRange) {
      truncated = oldValue.text;
      newSelection = oldValue.selection;
    } else if (value == ".") {
      truncated = "0.";

      newSelection = newValue.selection.copyWith(
        baseOffset: math.min(truncated.length, truncated.length + 1),
        extentOffset: math.min(truncated.length, truncated.length + 1),
      );
    }

    return TextEditingValue(
      text: truncated,
      selection: newSelection,
      composing: TextRange.empty,
    );
  }
}

