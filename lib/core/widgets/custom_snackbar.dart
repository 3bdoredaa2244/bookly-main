import 'package:flutter/material.dart';

void customSnackBarWidget(
    {required context, required String bookUrl, required String text}) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('$text $bookUrl')));
}
