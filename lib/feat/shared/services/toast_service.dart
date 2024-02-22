import 'package:flutter/material.dart';
import 'package:working_with_gemini/feat/shared/global_keys.dart';

class ToastService {
  ToastService._();

  static Future<void> showSnackBar(String content) async {
    GlobalKeys.rootScaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
  }
}
