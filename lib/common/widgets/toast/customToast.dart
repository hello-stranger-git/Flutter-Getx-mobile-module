import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomToast {
  static OverlayEntry? _overlayEntry;

  static void showCustomToast(BuildContext context, Widget content, {Duration duration = const Duration(seconds: 3)}) {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.1,
        left: 0,
        right: 0,
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: content,
          ),
        ),
      ),
    );

    Overlay.of(context)!.insert(_overlayEntry!);

    if (duration != Duration.zero) {
      Future.delayed(duration, () {
        if (_overlayEntry != null && _overlayEntry!.mounted) {
          _overlayEntry!.remove();
          _overlayEntry = null;
        }
      });
    }
  }

  static void dismiss() {
    if (_overlayEntry != null && _overlayEntry!.mounted) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }
}