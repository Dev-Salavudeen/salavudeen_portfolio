import 'package:flutter/material.dart';

final scrollController = ScrollController();
final homeKey = GlobalKey();
final projectKey = GlobalKey();
final contactKey = GlobalKey();

void scrollTo(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(milliseconds: 600),
    curve: Curves.easeInOut,
  );
}